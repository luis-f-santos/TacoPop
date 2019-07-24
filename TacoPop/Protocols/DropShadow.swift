//
//  File.swift
//  TacoPop
//
//  Created by Luis Santos on 7/23/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
        
    }
    
}
