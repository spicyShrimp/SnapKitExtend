//
//  SelectTableViewController.swift
//  SnapKitExtend
//
//  Created by charles on 2017/8/11.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

class SelectTableViewController: UITableViewController {

    let dataSource = ["数组布局", "数组布局2", "等间距布局", "等大小布局", "九宫格", "九宫格2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        var vc:UIViewController = UIViewController()
        switch indexPath.row {
        case 0:
            vc = SnapWithArrayViewController()
        case 1:
            vc = SnapWithArray2ViewController()
        case 2:
            vc = SnapSameSpaceViewController()
        case 3:
            vc = SnapSameWidthViewController()
        case 4:
            vc = SnapSudokuViewController()
        case 5:
            vc = SnapSudoku2ViewController()
        default: break
        }
        vc.title = dataSource[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
