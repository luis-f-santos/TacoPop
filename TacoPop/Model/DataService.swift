//
//  DataService.swift
//  TacoPop
//
//  Created by Luis Santos on 7/26/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded ()
}

class DataService {
    
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData () {
        
        // loading test data int tacoArray
        
        
        
        delegate?.deliciousTacoDataLoaded()
    }
    
}

