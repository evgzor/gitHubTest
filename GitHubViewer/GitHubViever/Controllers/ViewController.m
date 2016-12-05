//
//  ViewController.m
//  GitHubViever
//
//  Created by Eugene Zorin on 09/07/16.
//  Copyright © 2016 Eugene Zorin. All rights reserved.
//

#import "ViewController.h"
#import "CommonViewCell.h"
#import "NetworkingProcessing.h"


static NSInteger const  kHeadersNumberSections = 1;
static NSUInteger const kcellHeight = 30;
static NSUInteger const kLineWidth = 1;
static NSUInteger const kNuberOfCollums = 3;
static CGFloat const kMinimumInteritemSpacing = 1.;

@interface ViewController()

@property(nonatomic, strong) UICollectionView *collectionView;
@property(nonatomic, strong) NSArray *dataFromServer;
@property(nonatomic, strong) UIAlertController * alert;
@property BOOL isPagingNeed;
@property NSUInteger currentPage;
@property NSUInteger  maxVisibleItems;

@end

@implementation ViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    _collectionView=[[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    self.collectionView.alwaysBounceVertical = YES;

    _collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [_collectionView registerClass:[CommonViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    _collectionView.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:_collectionView];
    
    UIView* collectView = _collectionView;
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[collectView]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(collectView)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[collectView]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(collectView)]];
    
    __weak typeof(self) weakSelf = self;
    
    void (^completitionBlock)(NSArray* dataArray) = ^void(NSArray* dataArray){
        
        weakSelf.dataFromServer = dataArray;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [weakSelf.alert dismissViewControllerAnimated:YES completion:^{
                [self.collectionView reloadData];
            }];
        });
    };
    void (^onErrorBlock)(NSError *error) = ^void(NSError *error){
        dispatch_async(dispatch_get_main_queue(), ^{
            [weakSelf.alert dismissViewControllerAnimated:YES completion:^{
                UIAlertController *errorAlert =  [UIAlertController
                                                  alertControllerWithTitle: NSLocalizedString(@"Server Error", @"Get Data")
                                                  message:NSLocalizedString(@"Cannot access to the Xing repository list, please check connection settings", @"Retrieve data from Github")
                                                  preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *cancelAction = [UIAlertAction
                                               actionWithTitle:NSLocalizedString(@"Cancel", @"Cancel action")
                                               style:UIAlertActionStyleCancel
                                               handler:^(UIAlertAction *action)
                                               {
                                                   NSLog(@"Cancel action");
                                               }];
                [errorAlert addAction:cancelAction];
                
                [self presentViewController:errorAlert animated:YES completion:nil];
            }];
        });
    };
    
    _maxVisibleItems = (NSUInteger)round(_collectionView.frame.size.height/(kcellHeight + 2 * kLineWidth));
    
    _isPagingNeed = YES;
    _currentPage = 1;
    
    if (_isPagingNeed) {
        
        [[[NetworkingProcessing alloc] init] retrieveRepositoryList:completitionBlock onError:onErrorBlock forPage:_currentPage perPage: _maxVisibleItems];
    }
    else
    {
         [[[NetworkingProcessing alloc] init] retrieveRepositoryList:completitionBlock onError:onErrorBlock];
    }
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.alert =   [UIAlertController
                                  alertControllerWithTitle: NSLocalizedString(@"Server operation", @"Get Data")
                                  message:NSLocalizedString(@"Getting XING repository list", @"Retrieve data from Github")
                                  preferredStyle:UIAlertControllerStyleAlert];
    [self.alert addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"Cancel", @"") style:UIAlertActionStyleDefault
           handler:nil ]];
    [self.alert.view layoutIfNeeded];
    [self presentViewController:self.alert animated:YES completion:nil];
}

- (void)dealloc
{
    self.collectionView.delegate = nil;
    self.collectionView.dataSource = nil;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return kNuberOfCollums;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return (NSInteger)_dataFromServer.count + kHeadersNumberSections ;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CommonViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
     RepositoryCellType repositoryCellType = (RepositoryCellType)indexPath.row;
    
    if (indexPath.section == 0) {
        [cell formatHeaderForRepositoryCellType:repositoryCellType];
    }
    else
    {
        ReposData* item = (ReposData*)_dataFromServer[(NSUInteger)indexPath.section - kHeadersNumberSections];
        [cell formatCellWithReposData:item andCellType:repositoryCellType];
    }
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(_collectionView.bounds.size.width/3 - kLineWidth, kcellHeight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark Collection view layout things

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return kMinimumInteritemSpacing;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    return kMinimumInteritemSpacing;
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.collectionView.collectionViewLayout invalidateLayout];
    [self.collectionView reloadData];
}

- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake(1, 0, 1, 0);
}

#pragma mark - Paging on scrolview

- (void)scrollViewWillBeginDecelerating: (UIScrollView *)scrollView{
    
    if ([scrollView.panGestureRecognizer translationInView:scrollView.superview].y < 0) {
        
        if (_isPagingNeed) {
            __weak typeof(self) weakSelf = self;
            
            _currentPage++;
            
            [[[NetworkingProcessing alloc] init] retrieveRepositoryList:^(NSArray *data) {
                if (data.count) {

                    weakSelf.dataFromServer = [self.dataFromServer arrayByAddingObjectsFromArray:data];

                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.collectionView reloadData];
                    });
                }
                else
                {
                    self.isPagingNeed = NO;
                }
                
            } onError:^(NSError *error) {
                
            } forPage:_currentPage perPage:_maxVisibleItems];
            
        }
    }
}

@end
