//
//  SnapWithArray2ViewController.swift
//  SnapKitExtension
//
//  Created by charles on 2017/8/11.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit
import SnapKit

class SnapWithArray2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        
        let view1 = UIView()
        view1.backgroundColor = UIColor.random
        view.addSubview(view1)
        
        let view2 = UIView()
        view2.backgroundColor = UIColor.random
        view.addSubview(view2)
        
        let view3 = UIView()
        view3.backgroundColor = UIColor.random
        view.addSubview(view3)
        
        let view4 = UIView()
        view4.backgroundColor = UIColor.random
        view.addSubview(view4)
        
        let arr = [view1, view2, view3, view4]
        
        
        arr.snp.makeConstraints{
            $0.width.height.equalTo(100)
        }
        
        view1.snp.makeConstraints{ $0.top.equalTo(0) }
        view2.snp.makeConstraints{ $0.top.equalTo(100) }
        view3.snp.makeConstraints{ $0.top.equalTo(200) }
        view4.snp.makeConstraints{ $0.top.equalTo(300) } 
    }
}
