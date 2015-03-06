//
//  MasterViewController.m
//  DMFonts
//
//  Created by DEMAI on 15-3-3.
//  Copyright (c) 2015年 Today. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "SystemFontController.h"

@interface MasterViewController ()

@property NSArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.objects = @[@"系统字体",@"系统可用字体(需下载)"];
    self.navigationController.navigationItem.title = @"IOS Fonts";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDate *object = self.objects[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        SystemFontController *systemFont = [SystemFontController new];
        [self.navigationController pushViewController:systemFont animated:YES];
    }else if (indexPath.row == 1){
        
    }
}


@end
