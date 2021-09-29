//
//  ViewController.swift
//  StripeAnimationLayer
//
//  Created by QDong415 on 09/29/2021.
//  Copyright (c) 2021 https://github.com/QDong415/StripeAnimationLayer. All rights reserved.
//

import UIKit
import StripeAnimationLayer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.init(red: 26/255.0, green: 25/255.0, blue: 29/255.0, alpha: 1)
       
        
        //倾斜layer; y值请一定设置为0；如果无需倾斜效果，那么width也无需乘以2
        let animationLayer = StripeAnimationLayer(CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 2, height: self.view.bounds.height / 3), options: StripeLayerOptions())
        self.view.layer.addSublayer(animationLayer);
        
        //第2个案例，红色
        let whiteBgView = UIView(frame: CGRect(x: 0, y: self.view.bounds.height / 3 + 50, width: self.view.frame.size.width, height: 100))
        whiteBgView.backgroundColor = UIColor.white
        self.view.addSubview(whiteBgView)

        let option = StripeLayerOptions()
        option.color = UIColor.red
        option.gapWidth = 20
        option.barWidth = 12
        option.moveToRight = true //向右滚动
        option.rotation = CGFloat(Double.pi * 1 / 4)

        let animationLayer2 = StripeAnimationLayer(CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 2, height: 46), options: option)
        whiteBgView.layer.addSublayer(animationLayer2);

        //第3个案例, 竖着的
        let whiteBgView3 = UIView(frame: CGRect(x: 0, y: whiteBgView.frame.maxY, width: self.view.frame.size.width, height: 100))
        whiteBgView3.backgroundColor = UIColor.white
        self.view.addSubview(whiteBgView3)

        let option3 = StripeLayerOptions()
        option3.gapWidth = 12
        option3.barWidth = 12
        option3.rotation = CGFloat(0)

        // y值请一定设置为0；如果无需倾斜效果，那么width传入正常宽度即可
        let animationLayer3 = StripeAnimationLayer(CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 46), options: option3)
        whiteBgView3.layer.addSublayer(animationLayer3);
        
        
        //第4个案例, 斜着的
        let whiteBgView4 = UIView(frame: CGRect(x: 0, y: whiteBgView3.frame.maxY, width: self.view.frame.size.width, height: 500))
        whiteBgView4.backgroundColor = UIColor.white
        self.view.addSubview(whiteBgView4)

        // y值请一定设置为0；如果无需倾斜效果，那么width传入正常宽度即可
        let animationLayer4 = StripeAnimationLayer(CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 2, height: 130), options: StripeLayerOptions())
        whiteBgView4.layer.addSublayer(animationLayer4);
    }

    //hide 隐藏
    @objc func removeLayer(){
        guard let sublayers = self.view.layer.sublayers else {
            return
        }
        for layer in sublayers {
            if layer is StripeAnimationLayer {
                layer.removeAllAnimations()
                layer.removeFromSuperlayer()
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

