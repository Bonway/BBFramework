//
//  BBMVCView.h
//  架构
//
//  Created by Bonway on 2019/2/19.
//  Copyright © 2019 Bonway. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BBMVCModel;

NS_ASSUME_NONNULL_BEGIN


@protocol BBMVCViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end

@interface BBMVCView : UIView

@property(strong, nonatomic)BBMVCModel *model;

@property(nonatomic) id <BBMVCViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
