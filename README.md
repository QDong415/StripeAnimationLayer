# StripeAnimationLayer

[![CI Status](https://img.shields.io/travis/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/StripeAnimationLayer.svg?style=flat)](https://travis-ci.org/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/StripeAnimationLayer)
[![Version](https://img.shields.io/cocoapods/v/StripeAnimationLayer.svg?style=flat)](https://cocoapods.org/pods/StripeAnimationLayer)
[![License](https://img.shields.io/cocoapods/l/StripeAnimationLayer.svg?style=flat)](https://cocoapods.org/pods/StripeAnimationLayer)
[![Platform](https://img.shields.io/cocoapods/p/StripeAnimationLayer.svg?style=flat)](https://cocoapods.org/pods/StripeAnimationLayer)

## Intro 简介

Loading Animation Stripe CALayer, enable to custom speed,direction,gapWidth. Base on CAReplicatorLayer ,very lightful

仿快手直播界面加载中，顶部的滚动条状Loading，适用于 视频加载动画，直播界面加载动画。基于CAReplicatorLayer实现，占用内存极小，非常轻量级

## Screenshot 预览图

![](http://qiniu.itopic.com.cn/stripe1.gif)

## Installation 安装

先在终端里搜索 `pod search StripeAnimationLayer` 

如果搜索不到1.0.0版本，需要更新你电脑的pod仓库，以下是更新步骤：
- 先 `pod repo update —verbose`  更新你本地电脑的pod仓库。然后再搜索一次试试看
- 如果还是搜索不到，执行 `rm ~/Library/Caches/CocoaPods/search_index.json` 。再搜索就OK了

```ruby
pod 'StripeAnimationLayer'
```

## Example

Swift 调用方式：
```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    
    //倾斜layer; y值请一定设置为0；如果无需倾斜效果，那么width也无需乘以2
    let animationLayer = StripeAnimationLayer(CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 2, height: self.view.bounds.height / 3), options: StripeLayerOptions())
    self.view.layer.addSublayer(animationLayer);
}
```

OptionParams 可选参数：
```Swift
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
```

## Author

QDong , 285275534@qq.com

## License

StripeAnimationLayer is available under the MIT license. See the LICENSE file for more info.
