//
//  ViewController.swift
//  gello world
//
//  Created by 互动 on 16/4/4.
//  Copyright © 2016年 互动. All rights reserved.
//


/*************** MyPlayground中是自己在学习swift的时候做的东西 **************/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        //let 类型只是地址不可变，属性是可以改变的,let变量编译器会做出进一步的优化
        let label:UILabel = UILabel.init(frame: CGRectMake(0, 0, 320, 50))
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        label.frame = CGRectMake(20, 64, 100, 100)
        label.text = "hello xiaoyuancai"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

