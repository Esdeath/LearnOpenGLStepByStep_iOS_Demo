//
//  ViewController.m
//  02_HelloVertex
//
//  Created by Asuna on 16/10/25.
//  Copyright © 2016年 Asuna. All rights reserved.
//

#import "ViewController.h"
#import <OpenGLES/ES2/glext.h>
#import <OpenGLES/ES2/gl.h>
@interface ViewController ()

@end

@implementation ViewController {
    GLuint _vao;
}

const static  GLKVector3 bufferData[] = {{0.0,0.0,0.0}};

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GLKView* view = (GLKView*)self.view;
    EAGLContext *content = [[EAGLContext alloc]initWithAPI:kEAGLRenderingAPIOpenGLES2];
    view.context  = content;
    [EAGLContext setCurrentContext:content];
    
    glGenBuffers(1, &_vao);
    glBindBuffer(GL_ARRAY_BUFFER, _vao);
    glBufferData(GL_ARRAY_BUFFER, sizeof(bufferData), bufferData, GL_STATIC_DRAW);
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    // 缓存清空后的颜色值
    glClearColor(0.0, 0.0, 0.0, 0.0);
    // 清空颜色缓存
    glClear(GL_COLOR_BUFFER_BIT);
    
    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, _vao);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0);
    glDrawArrays(GL_POINTS, 0, 1);
    glDisableVertexAttribArray(0);
    
}

@end
