//
//  ViewController.swift
//  passValueSwift
//
//  Created by chenxingwang on 2017/2/21.
//  Copyright © 2017年 chenxingwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfSendWord: UITextField!
    @IBOutlet weak var btPush: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.red
        
        self.btPush.addTarget(self, action: #selector(jumpToSecondVC), for: .touchUpInside)
        
        
    }
    
    func myClosure(testStr:String)->Void{
        //给textLab 赋值
        //这句话什么时候执行？，闭包类似于oc中的block或者可以理解成c语言中函数，只有当被调用的时候里面的内容才会执行
        tfSendWord?.text = testStr;
    }

    func jumpToSecondVC() {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondVC.strPass = tfSendWord.text
        
        secondVC.testClosure = myClosure;
        
        secondVC.view.backgroundColor = UIColor.cyan
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

