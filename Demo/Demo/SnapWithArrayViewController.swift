//
//  SnapWithArrayViewController.swift
//  SnapKitExtend
//
//  Created by charles on 2017/8/11.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

class SnapWithArrayViewController: UIViewController {

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
        
        arr.snp.makeConstraints{
            $0.width.height.equalTo(100)
            $0.center.equalTo(CGPoint(x: CGFloat(arc4random_uniform(300)) + 50,
                                      y: CGFloat(arc4random_uniform(300)) + 50))
        }
    }
}
