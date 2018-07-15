//
//  FactProvider.swift
//  funfact
//
//  Created by chao hsien on 2018/7/10.
//  Copyright © 2018年 chao hsien. All rights reserved.
//

import GameKit

struct FactProvider {
    let facts = ["1234567899",
                 "1111111111",
                 "2222222222",
                 "3333333333",
                 "4444444444",
                 "5555555555",
                 "6666666666"]
    
    func randomFact() -> String{
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count-1)
        return facts[randomNumber]
    }
}
