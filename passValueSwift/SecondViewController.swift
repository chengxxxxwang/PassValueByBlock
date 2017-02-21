//
//  SecondViewController.swift
//  passValueSwift
//
//  Created by chenxingwang on 2017/2/21.
//  Copyright © 2017年 chenxingwang. All rights reserved.
//

import UIKit


/// 声明一个block
typealias SecondViewControllerBlock = (String)->()

class SecondViewController: UIViewController {

    var strPass :String!
    
    @IBOutlet weak var tfSendBack: UITextField!
    
    @IBOutlet weak var btBack: UIButton!
    
    
    /// 持有一个block变量
    var testClosure : SecondViewControllerBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print(strPass)
        
        tfSendBack.text = strPass
        
        self.btBack.addTarget(self, action: #selector(back), for: UIControlEvents.touchUpInside)
        
        
    }

    func back() {
        
        if (testClosure != nil){
            testClosure!("回调传值")
        }
        
        self.testClosure!(tfSendBack.text!)
        _ = navigationController?.popViewController(animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
