//
//  BBMVCView.m
//  架构
//
//  Created by Bonway on 2019/2/19.
//  Copyright © 2019 Bonway. All rights reserved.
//

#import "BBMVCView.h"
#import "BBMVCModel.h"

@interface BBMVCView()
@property(nonatomic, strong) UIButton *buttonPrint;
@end

@implementation BBMVCView





-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        [self addSubview:self.buttonPrint];
    }
    return self;
}


- (void)setModel:(BBMVCModel *)model {
    
    _model = model;
    NSLog(@"printing content: %@",model.content);
}

- (UIButton *)buttonPrint {
    if (!_buttonPrint) {
        _buttonPrint = [UIButton buttonWithType:UIButtonTypeSystem];
        [_buttonPrint setFrame:CGRectMake(100, 100, 100, 50)];
        [_buttonPrint setTitle:@"Print" forState:UIControlStateNormal];
        [_buttonPrint addTarget:self
                         action:@selector(onPrintClick)
               forControlEvents:UIControlEventTouchUpInside];
    }
    return _buttonPrint;
}

- (void)onPrintClick {
    if ([_delegate respondsToSelector:@selector(onPrintBtnClick)]) {
        [_delegate onPrintBtnClick];
    }
}


@end
