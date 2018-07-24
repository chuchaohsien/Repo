//
//  ViewController.swift
//  Week3
//
//  Created by chao hsien on 2018/7/23.
//  Copyright © 2018年 chao hsien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mycheck: UILabel!
    @IBOutlet weak var thirdtext: UITextField!
    @IBOutlet weak var account: UITextField!    // 輸入帳號
    @IBOutlet weak var password: UITextField!   // 輸入密碼
    
    let myAccount = "luke@gmail.com"
    let myPassword = "1234"
    
    @IBAction func mySegmentedAction(_ sender: UISegmentedControl) {
        
        let line: UILabel = UILabel()
        let blank: UITextView = UITextView()
        
        if sender.selectedSegmentIndex == 1 {   //判斷使用者選擇是哪一個Segmented 0是log in 、1是sign up
           line.isHidden = false
           blank.isHidden = false         // check欄需可使用
        } //else {
            //blank.isHidden = false      // check欄需可使用
        //}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: UIButton) {
        
        if account.text == myAccount && password.text == myPassword {
            print("成功")
            // self.init.text = "成功"
            
            //傳至下一頁面
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginView")
            
            self.present(viewController, animated: false, completion: nil)
            // 返回 self.dismissViewControllerAnimated(true, completion: nil)
            
        } else{
            print("輸入錯誤")
           // self.init.text = "輸入錯囉"
        }
        
    }
    

}

