//
//  DetailViewController.h
//  DMFonts
//
//  Created by DEMAI on 15-3-3.
//  Copyright (c) 2015年 Today. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

