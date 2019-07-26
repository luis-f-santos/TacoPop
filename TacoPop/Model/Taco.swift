//
//  Taco.swift
//  TacoPop
//
//  Created by Luis Santos on 7/26/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import Foundation


enum TacoShell: Int {
    case flour = 1
    case corn = 2
}

enum TacoProtein: String {
    case beef = "Beef"
    case chicken = "Chicken"
    case brisket = "Brisket"
    case fish = "Fish"
    
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
    
}
struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment!
    
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var proteinId: TacoProtein {
        return _proteinId
    }
    
    var condementId: TacoCondiment {
        return _condimentId
    }
    
    
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        
        _id = id
        _productName = productName
        
        // Taco shell
        switch shellId {
        case 2:
            self._shellId = TacoShell.corn
        default:
            self._shellId = TacoShell.flour
        }
        
        switch proteinId {
        case 2:
            self._proteinId = TacoProtein.chicken
        case 3:
            self._proteinId = TacoProtein.brisket
        case 4:
            self._proteinId = TacoProtein.fish
        default:
            self._proteinId = TacoProtein.beef
        }
        
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded
        }
        
    }
    
    
    
}
