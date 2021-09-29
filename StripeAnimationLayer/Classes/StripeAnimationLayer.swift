//
//  LoadingAnimationLayer.swift
//  QSwift
//
//  Created by QDong on 2021/9/26.
//

import Foundation
import UIKit

open class StripeAnimationLayer: CAReplicatorLayer {
    
    public convenience init(_ bounds: CGRect, options: StripeLayerOptions){
        
        self.init()
        
        //空隙宽度 + 条宽度
        let gapBarTotalWidth = options.gapWidth + options.barWidth
        
        //是否是倾斜的；通过rotation判断是否是倾斜的; 如果是倾斜的，外部传进来的bounds.width请*2
        let slant = options.rotation != 0
        
        self.bounds = bounds
        //设置图层的位置(position参数)为控制器view的中心点； 如果没有倾斜效果，那么x:bounds.width/2是最合适的；有倾斜就传0
        self.position = CGPoint(x: slant ? 0 : bounds.width / 2 , y: bounds.height / 2)
        //生成多少个小layer
        self.instanceCount = Int(bounds.width / gapBarTotalWidth) * 2
        //设置复制出来子层的位移
        self.instanceTransform = CATransform3DMakeTranslation(gapBarTotalWidth, 0, 0)
        
        //每个小layer
        let stripeLayer = CALayer()
        //因为小layer要倾斜，所以高度设置为两倍，然后再倾斜，然后再整体裁剪
        stripeLayer.bounds = CGRect(x: 0, y: 0, width: options.barWidth, height: bounds.height * 2)
        stripeLayer.backgroundColor = options.color.cgColor
        //position == 设置图层的位置为控制器view的中心点
        stripeLayer.position = CGPoint(x: options.barWidth / 2, y: bounds.height / 2)
        //小layer倾斜 45度；如果不倾斜，那么gapWidth 和 barWidth相同比较好看，如果倾斜，建议gapWidth是barWidth的两倍
        stripeLayer.transform = CATransform3DMakeRotation(options.rotation, 0, 0, 1)
        self.addSublayer(stripeLayer)
        
        //Add ScrollAnimation 添加横移动画
        //每个小layer横移的距离为 空隙+自己width 然后无限循环；这样造成全滚动的假象
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.toValue = stripeLayer.position.x + (options.moveToRight ? gapBarTotalWidth : -gapBarTotalWidth)
        animation.duration = 0.5
        animation.speed = options.speed
        animation.repeatCount = Float.infinity
        animation.isRemovedOnCompletion = false
        stripeLayer.add(animation, forKey: "stripeAnimation")
        
        //裁剪 + 渐变
        self.mask = gradientLayer(frame: CGRect.init(x: slant ? bounds.width/2 : 0, y: 0, width: slant ? bounds.width/2 : bounds.width, height: bounds.height), colors: options.gradientColors)
    }
    
    //裁剪 + 颜色渐变
    private func gradientLayer(frame: CGRect, colors: [CGColor]) -> CALayer {
        let alphaLayer = CAGradientLayer()
        alphaLayer.frame = frame //这个frame是为了裁剪
        //起点全透明，终点0.9透明
        alphaLayer.colors = colors
        return alphaLayer
    }
}
