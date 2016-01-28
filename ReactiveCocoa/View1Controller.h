//
//  View1Controller.h
//  ReactiveCocoa
//
//  Created by Tayoji on 16/1/21.
//  Copyright © 2016年 Tayoji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <ReactiveCocoa/EXTScope.h>

@interface View1Controller : UIViewController
- (IBAction)clickbackItem:(UIBarButtonItem *)sender;
-(RACSignal *)fetchTextFieldText;
@end
