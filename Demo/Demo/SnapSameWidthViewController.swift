//
//  SnapSameWidthViewController.swift
//  SnapKitExtend
//
//  Created by charles on 2017/8/11.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

class SnapSameWidthViewController: UIViewController {
    
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
        //        fixedItemLength:item对应方向的宽或者高
        //        leadSpacing:左边距(上边距)
        //        tailSpacing:右边距(下边距)
        arr.snp.distributeViewsAlong(axisType: .vertical, fixedItemLength: 100, leadSpacing: 30, tailSpacing: 30)
        //        上面的可以约束y+h,还需要另外约束x+w
        //        约束y和height()如果方向是纵向,那么则另外需要设置y+h
        arr.snp.makeConstraints{
            $0.width.left.equalTo(100)
        }
    }
}
