//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by Luis Santos on 8/2/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}
