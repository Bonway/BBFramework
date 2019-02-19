//
//  BBMVCViewController.m
//  架构
//
//  Created by Bonway on 2019/2/19.
//  Copyright © 2019 Bonway. All rights reserved.
//

#import "BBMVCViewController.h"
#import "BBMVCModel.h"
#import "BBMVCView.h"

@interface BBMVCViewController ()

@property (strong, nonatomic) BBMVCModel *bbModel;
@property (strong, nonatomic) BBMVCView *bbView;

@end

@implementation BBMVCViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.view addSubview:self.bbView];
    
    [self printData];
    
}

- (BBMVCView *)bbView {
    if (!_bbView) {
        _bbView = [BBMVCView new];
        _bbView.frame = self.view.frame;
        _bbView.backgroundColor = [UIColor redColor];
    }
    return _bbView;
}
- (void)printData {
    
    _bbView.model.content = @"print";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
