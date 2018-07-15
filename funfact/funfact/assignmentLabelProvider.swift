//
//  assignmentLabelProvider.swift
//  funfact
//
//  Created by chao hsien on 2018/7/15.
//  Copyright © 2018年 chao hsien. All rights reserved.
//

import GameKit

struct assignmentLabelProvider {
    let assfacts = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus",
                 "contrary to popular belief, Lorem Ipsum is not simply random text",
                 "Richard McClintock, a Latin professor at Hampden-Sydney College in",
                 "looked up one of the more obscure Latin words, consectetur",
                 "from a Lorem Ipsum passage, and going through the cities of the word",
                 "this book is a treatise on the theory of ethics, very popular during the.",
                 "The first line of Lorem Ipsum, Lorem ipsum dollor sit amet..",
                 "The standard chunk of Lorem Ipsun used since the 1500s is reproduced",
                 "there are many variations of passage of Lorem Ipsum available.",
                 "but the majority have suffered alteration in some form"]
    
    func randomFact() -> String{
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: assfacts.count-1)
        return assfacts[randomNumber]
    }
}

