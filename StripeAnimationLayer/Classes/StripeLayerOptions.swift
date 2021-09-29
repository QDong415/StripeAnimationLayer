//
//  StripeLayerOptions.swift
//  QSwift
//
//  Created by QDong on 2021/9/26.
//
//

import UIKit


open class StripeLayerOptions: NSObject {
    
    /// 条纹颜色
    /// Color of the shapes. Defaults to gray.
    open var color = UIColor.lightGray
    
    /// 如果不倾斜，那么gapWidth 和 barWidth相同比较好看，如果倾斜，建议gapWidth是barWidth的两倍左右
    /// Width of the bar
    open var barWidth: CGFloat = 8
    
    /// 间距宽度
    /// Gap between bars
    open var gapWidth: CGFloat = 8
    
    /// 滚动方向
    /// Direction
    open var moveToRight: Bool = true
    
    /// 滚动速度
    /// Speed of the animation
    open var speed: Float = 2
 
    /// 倾斜角度， 3/4 = 45 度
    /// Rotation of the shapes， 3/4 = 45 degree
    open var rotation: CGFloat = CGFloat(Double.pi * 3.5 / 4)
    
    /// 渐变透明度
    /// Gradient alpha of the shapes.
    open var gradientColors: [CGColor] = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor]
}
