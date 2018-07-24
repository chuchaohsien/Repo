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
    

}

