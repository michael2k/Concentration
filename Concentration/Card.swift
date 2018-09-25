//
//  Card.swift
//  Concentration
//
//  Created by Kim Myungsun on 2018. 9. 24..
//  Copyright © 2018년 com.kimmyungsun. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
