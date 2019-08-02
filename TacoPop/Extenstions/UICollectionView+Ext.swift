//
//  UICollectionView+Ext.swift
//  TacoPop
//
//  Created by Luis Santos on 8/2/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import UIKit


extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeu cell with identifier")
        }
        return cell

    }
    
}

extension UICollectionViewCell: ReusableView {}
