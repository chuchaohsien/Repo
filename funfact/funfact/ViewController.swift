//
//  ViewController.swift
//  funfact
//
//  Created by chao hsien on 2018/7/10.
//  Copyright © 2018年 chao hsien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var assignmentLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let colorProvider = BackgroundProvier()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = "An interesting fact!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showfun() {
        let factProvider = FactProvider()
        funFactLabel.text = factProvider.randomFact()
        
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
        let assignmentlabelProvider = assignmentLabelProvider()
        assignmentLabel.text = assignmentlabelProvider.randomFact()
        
    }
}


