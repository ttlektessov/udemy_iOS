//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Temirlan Tlektessov on 2021/09/01.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
