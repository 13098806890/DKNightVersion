//
//  UITableView+Night.m
//  UITableView+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UITableView+Night.h"
#import "NNNightManager.h"
#import <objc/runtime.h>

@interface UITableView ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, NNColorPicker> *pickers;

@end

@implementation UITableView (Night)


- (NNColorPicker)dk_separatorColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_separatorColorPicker));
}

- (void)dk_setSeparatorColorPicker:(NNColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_separatorColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.separatorColor = picker();
    [self.pickers setValue:[picker copy] forKey:@"setSeparatorColor:"];
}


@end