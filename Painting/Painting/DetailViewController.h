//
//  DetailViewController.h
//  Painting
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

