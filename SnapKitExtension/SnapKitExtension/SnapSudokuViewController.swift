//
//  SnapSudokuViewController.swift
//  SnapKitExtension
//
//  Created by charles on 2017/8/11.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit
import SnapKit

class SnapSudokuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        var arr: Array<ConstraintView> = [];
        for _ in 0..<9 {
            let subview = UIView()
            subview.backgroundColor = UIColor.random
            view.addSubview(subview)
            arr.append(subview)
        }
        
//        固定大小,可变中间间距,上下左右间距默认为0,可以设置
        arr.snp.distributeSudokuViews(fixedItemWidth: 100, fixedItemHeight: 100, warpCount: 3)
    }

}
