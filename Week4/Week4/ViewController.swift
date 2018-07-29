//
//  ViewController.swift
//  Week4
//
//  Created by chao hsien on 2018/7/30.
//  Copyright © 2018年 chao hsien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /**
        if let urlStr = "http://stations-98a59.firebaseio.com/.json".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),let url = URL(string: urlStr){
            
            let task = URLSession.shared.dataTask(with: url){ (data, response , error) in
                let decoder = JSONDecoder
                decoder.DataDecodingStrategy = .base64
            }
        }
        
        **/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

