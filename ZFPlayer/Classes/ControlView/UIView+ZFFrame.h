//
//  UIView+ZFFrame.h
//  ZFPlayer
//
// Copyright (c) 2016年 任子丰 ( http://github.com/renzifeng )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>

@interface UIView (ZFFrame)
@property (nonatomic) CGFloat zf_x;
@property (nonatomic) CGFloat zf_y;
@property (nonatomic) CGFloat zf_width;
@property (nonatomic) CGFloat zf_height;

@property (nonatomic) CGFloat zf_top;
@property (nonatomic) CGFloat zf_bottom;
@property (nonatomic) CGFloat zf_left;
@property (nonatomic) CGFloat zf_right;

@property (nonatomic) CGFloat zf_centerX;
@property (nonatomic) CGFloat zf_centerY;

@property (nonatomic) CGPoint zf_origin;
@property (nonatomic) CGSize  zf_size;

@end
