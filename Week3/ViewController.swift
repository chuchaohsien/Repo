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
    @IBOutlet weak var account: UITextField!                // 輸入帳號
    @IBOutlet weak var password: UITextField!               // 輸入密碼
    @IBOutlet weak var mySegmented: UISegmentedControl!
    @IBOutlet weak var check: UITextField!
    
    let myAccount = "luke@gmail.com"      // 唯一有效帳號
    let myPassword = "1234"               // 唯一有效密碼
    let mmAcount = ""                     // 空白字串
    let mmPassword = ""                   // 空白字串
    
    let alertController1 = UIAlertController(title: "Error", message: "Login fail.", preferredStyle: .alert)
    let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        print("You've wrong ID");
    }
    
    let alertController2 = UIAlertController(title: "Error", message: "Account shoule not be empty.", preferredStyle: .alert)
    let action2 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        print("your account should not be empty");
    }
    
    let alertController3 = UIAlertController(title: "Error", message: "password shoule not be empty.", preferredStyle: .alert)
    let action3 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        print("your password should not be empty");
    }
    
    let alertController4 = UIAlertController(title: "Error", message: "please check the password again.", preferredStyle: .alert)
    let action4 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        print("please check the password");
    }
    
    @IBAction func mySegmentedAction(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {   //判斷使用者選擇是哪一個Segmented 0是log in 、1是sign up
           thirdtext.isHidden = true
           mycheck.isHidden = true          // check欄需隱藏
        } else {
            thirdtext.isHidden = false      // check欄需可使用
            mycheck.isHidden = false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: UIButton ) {
    if mySegmented.selectedSegmentIndex == 0 {
        if account.text == myAccount && password.text == myPassword {
            print("成功")
            
            //傳至下一頁面
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginView")
            
            self.present(viewController, animated: false, completion: nil)
            // 返回 self.dismissViewControllerAnimated(true, completion: nil)
            
        } else {
            alertController1.addAction(action1)
            self.present(alertController1, animated: true, completion: nil )
         }
      }

      if mySegmented.selectedSegmentIndex == 1 {
        
        if account.text == mmAcount {
            alertController2.addAction(action2)
            self.present(alertController2, animated: true, completion: nil )
        }
        if password.text == mmPassword {
            alertController3.addAction(action3)
            self.present(alertController3, animated: true, completion: nil )
        }
        if password.text != check.text {
            alertController4.addAction(action4)
            self.present(alertController4, animated: true, completion: nil )
        } else {
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginView")
            
            self.present(viewController, animated: false, completion: nil)
        }
        }
      }
}



