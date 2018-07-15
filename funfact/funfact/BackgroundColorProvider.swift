//
//  BackgroundColorProvider.swift
//  funfact
//
//  Created by chao hsien on 2018/7/11.
//  Copyright © 2018年 chao hsien. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundProvier{
    let colors = [
      UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0) ,// teal color
      UIColor(red: 40/255.0, green: 150/255.0, blue: 200/255.0, alpha: 1.0) ,
      UIColor(red: 150/255.0, green: 40/255.0, blue: 100/255.0, alpha: 1.0) ,
      UIColor(red: 230/255.0, green: 30/255.0, blue: 180/255.0, alpha: 1.0) ,
    ]
    func randomColor()->UIColor{
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count-1)
        return colors[randomNumber]
    }
}
