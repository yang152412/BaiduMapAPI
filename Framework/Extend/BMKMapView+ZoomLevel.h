//
//  BMKMapView+extend.h
//  Shoushou
//
//  Created by 杨世昌 on 15/7/22.
//  Copyright (c) 2015年 杨世昌. All rights reserved.
//

#import <BaiduMapAPI/BMapKit.h>


/**
 *  百度地图扩展方法
 */
@interface BMKMapView (ZoomLevel)

/**
 *  获取当前缩放级别
 */
- (NSUInteger)getZoomLevel;

/**
 *  设置中点和缩放级别
 */
- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
                  zoomLevel:(NSUInteger)zoomLevel
                   animated:(BOOL)animated;

/**
 *  自动安装地图上的标记点缩放到合适大小
 */
- (void)zoomToFitMapAnnotations;

/**
 *  删除地图上的百度logo
 */
- (void)removeBaiduLogo;

/**
 *  是否开启缩放按钮
 */
@property (nonatomic, assign) BOOL showZoomButtons;
@property (nonatomic, readonly) UIButton * plusButton; // 放大按钮
@property (nonatomic, readonly) UIButton * lessButton; // 缩小按钮

@end