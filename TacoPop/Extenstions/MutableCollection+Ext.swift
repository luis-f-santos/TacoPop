//
//  MutableCollection+Ext.swift
//  TacoPop
//
//  Created by Luis Santos on 8/2/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import Foundation


extension MutableCollection where Index == Int  {
    
    mutating func shuffle() {
        if count < 2 {return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            self.swapAt(i, j)
        }
    }
}
