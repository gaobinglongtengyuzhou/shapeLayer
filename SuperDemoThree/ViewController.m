//
//  ViewController.m
//  SuperDemoThree
//
//  Created by dongqiangfei on 16/3/11.
//  Copyright © 2016年 dongqiangfei. All rights reserved.
//

#import "ViewController.h"
#import "BVIew.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize delegate = _delegate;

- (void)dealloc
{
    self.delegate = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    [shapeLayer setBounds:self.view.bounds];
    [shapeLayer setPosition:self.view.center];
    [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
    
    // 设置虚线颜色为blackColor
    [shapeLayer setStrokeColor:[[UIColor blackColor] CGColor]];
//    [shapeLayer setStrokeColor:[[UIColor colorWithRed:223/255.0 green:223/255.0 blue:223/255.0 alpha:1.0f] CGColor]];
    
    // 3.0f设置虚线的高度
    [shapeLayer setLineWidth:1.0f];
    [shapeLayer setLineJoin:kCALineJoinRound];
    
    // 3=线的宽度 1=每条线的间距
    [shapeLayer setLineDashPattern:
     [NSArray arrayWithObjects:[NSNumber numberWithInt:10],
      [NSNumber numberWithInt:1],nil]];
    
    // Setup the path
    CGMutablePathRef path = CGPathCreateMutable();
    // 0,10代表初始坐标的x，y
    // 320,10代表初始坐标的x，y
    CGPathMoveToPoint(path, NULL, 0, 89);
    CGPathAddLineToPoint(path, NULL, 320,89);
    
//    // Setup the path
//    CGMutablePathRef path1 = CGPathCreateMutable();
//    // 0,10代表初始坐标的x，y
//    // 320,10代表初始坐标的x，y
//    CGPathMoveToPoint(path1, NULL, 111, 100);
//    CGPathAddLineToPoint(path1, NULL, 320,0);
//    
    [shapeLayer setPath:path];
//    CGPathRelease(path1);
    
    // 可以把self改成任何你想要的UIView, 下图演示就是放到UITableViewCell中的
    [[self.view layer] addSublayer:shapeLayer];

//    
//    
//    BVIew *view = [[BVIew alloc] initWithFrame:self.view.bounds];
//    view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view];
//    
//    if (_delegate && [_delegate respondsToSelector:@selector(timeTickOut:)]) { //只有当代理存在，且timeTickOut方法被实现的时候才执行下面的语句
//        NSLog(@"执行代理");
//        [_delegate timeTickOut:NO];
//    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
