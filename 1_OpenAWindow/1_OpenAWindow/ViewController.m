//
//  ViewController.m
//  1_OpenAWindow
//
//  Created by Asuna on 16/10/24.
//  Copyright © 2016年 Asuna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GLKView* view = (GLKView*)self.view;
    EAGLContext *content = [[EAGLContext alloc]initWithAPI:kEAGLRenderingAPIOpenGLES2];
    view.context  = content;
    [EAGLContext setCurrentContext:content];
    
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    // 缓存清空后的颜色值
    glClearColor(0.0, 0.0, 0.0, 0.0);
    // 清空颜色缓存
    glClear(GL_COLOR_BUFFER_BIT);
}

@end
