//
//  ViewController.m
//  架构
//
//  Created by Bonway on 2019/1/28.
//  Copyright © 2019 Bonway. All rights reserved.
//

#import "ViewController.h"

#import "BBMVCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[BBMVCViewController new] animated:YES];
    }
    
    
    
}

@end
