//
//  SnapSameSpaceViewController.swift
//  SnapKitExtend
//
//  Created by charles on 2017/8/11.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

class SnapSameSpaceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        var arr: Array<UIView> = [];
        for _ in 0..<4 {
            let subview = UIView()
            subview.backgroundColor = UIColor.random
            view.addSubview(subview)
            arr.append(subview)
        }
        
//        axisType:方向
//        fixedSpacing:中间间距
//        leadSpacing:左边距(上边距)
//        tailSpacing:右边距(下边距)
        arr.snp.distributeViewsAlong(axisType: .horizontal, fixedSpacing: 10, leadSpacing: 10, tailSpacing: 10)
//        上面的可以约束x+w,还需要另外约束y+h
//        约束y和height()如果方向是纵向,那么则另外需要设置x+w
        arr.snp.makeConstraints{
            $0.top.equalTo(100)
            $0.height.equalTo(CGFloat(arc4random_uniform(100) + 50))
        }
    }
}
