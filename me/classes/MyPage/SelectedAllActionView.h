//
//  SelectedAllActionView.h
//  me
//
//  Created by jam on 2018/1/11.
//  Copyright © 2018年 bangju. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectedAllActionView : UIView

@property (nonatomic,assign) BOOL selectedAll;

@property (weak, nonatomic) IBOutlet UIButton *selectAllButton;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;

@end
