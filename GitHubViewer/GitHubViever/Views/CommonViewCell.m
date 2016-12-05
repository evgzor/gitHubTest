//
//  CommonViewCell.m
//  GitHubViever
//
//  Created by Eugene Zorin on 09/07/16.
//  Copyright © 2016 Eugene Zorin. All rights reserved.
//

#import "CommonViewCell.h"
#import "Owner.h"

static NSString *const  kDescriptionTitle = @"Description";
static NSString *const  kNameTitle = @"Name";
static NSString *const  kLoginTitle = @"Login Owner";

@implementation CommonViewCell
{
    UILabel* _textDesriptionLabel;
    NSString* _textDescription;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowRadius = 1.0f;
        self.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
        self.layer.shadowOpacity = 0.1f;
        
        _textDesriptionLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _textDesriptionLabel.textAlignment = NSTextAlignmentCenter;
        _textDesriptionLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
                
        [self addSubview:_textDesriptionLabel];
    }
    return self;
}

-(void)prepareForReuse
{
    _textDesriptionLabel.backgroundColor = [UIColor clearColor];
    [self setTextDescription:@""];
}

-(void)setTextDescription:(NSString *)textDescription
{
    _textDescription = textDescription;
    _textDesriptionLabel.text = textDescription;
}

-(void)setAsForked
{
    _textDesriptionLabel.backgroundColor = [[UIColor alloc] initWithRed: 82.0f/255 green: 235.0f/255.f blue:34.0f/255.f alpha:1.f];
}

-(void)formatCellWithReposData:(ReposData*)item andCellType: (RepositoryCellType) cellType
{
    NSString* textDataDescription;
    switch (cellType) {
        case RepositoryName:
            textDataDescription = item.name;
            break;
        case RepositoryDescription:
            textDataDescription = item.internalBaseClassDescription;
            break;
        case RepositoryOwner:
            textDataDescription = item.owner.login;
            break;
            
        default:
            break;
    }
    
    [self setTextDescription:textDataDescription];
    
    if (item.fork) {
        [self setAsForked];
    }
}

-(void) formatHeaderForRepositoryCellType: (RepositoryCellType) cellType
{
    NSString* textDataDescription;
    switch (cellType) {
        case RepositoryName:
            textDataDescription = kNameTitle;
            break;
        case RepositoryDescription:
            textDataDescription = kDescriptionTitle;
            break;
        case RepositoryOwner:
            textDataDescription = kLoginTitle;
            break;
            
        default:
            break;
    }
    
    [self setTextDescription:textDataDescription];
}

@end
