//
//  ReusableView.swift
//  TacoPop
//
//  Created by Luis Santos on 8/2/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

