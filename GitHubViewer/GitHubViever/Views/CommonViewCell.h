//
//  CommonViewCell.h
//  GitHubViever
//
//  Created by Eugene Zorin on 09/07/16.
//  Copyright © 2016 Eugene Zorin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReposData.h"

typedef NS_OPTIONS(NSUInteger, RepositoryCellType) {
    RepositoryName = 0,
    RepositoryDescription,
    RepositoryOwner
};

@interface CommonViewCell : UICollectionViewCell

-(void)formatCellWithReposData:(ReposData*)item andCellType: (RepositoryCellType) cellType;

-(void) formatHeaderForRepositoryCellType: (RepositoryCellType) cellType;

@end
