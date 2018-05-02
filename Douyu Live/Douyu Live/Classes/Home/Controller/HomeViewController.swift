//
//  HomeViewController.swift
//  Douyu Live
//
//  Created by chen on 2018/4/27.
//  Copyright © 2018年 chen. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置UI界面
        setupUI()
        
    }
}


//Mark!-设置ui界面
extension HomeViewController{
    private func setupUI(){
        //1.设置导航栏
        setupNavigationBar()
    }
    private func setupNavigationBar(){
        //1.设置左侧Item
        let btn = UIButton()
        btn.setImage(UIImage(named:"homeLogoIcon"), for:.normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        //2.设置右侧Item
        
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage(named:"history_btn_normal"), for: .normal)
        historyBtn.setImage(UIImage(named:"history_btn_HL"), for: .highlighted)
        historyBtn.sizeToFit()
        let historyItem = UIBarButtonItem(customView: historyBtn)
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named:"search_btn_normal"), for: .normal)
        searchBtn.setImage(UIImage(named:"search_btn_HL"), for: .highlighted)
        searchBtn.sizeToFit()
        let searchItem = UIBarButtonItem(customView: searchBtn)
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named:"qrcode_btn"), for: .normal)
        qrcodeBtn.setImage(UIImage(named:"qrcode_btn_HL"), for: .highlighted)
        qrcodeBtn.sizeToFit()
        let qrcodeItem = UIBarButtonItem(customView: qrcodeBtn)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
    }

}
