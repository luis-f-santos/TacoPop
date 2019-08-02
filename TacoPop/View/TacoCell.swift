//
//  TacoCell.swift
//  TacoPop
//
//  Created by Luis Santos on 7/26/19.
//  Copyright © 2019 Luis Santos. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell (taco: Taco) {
        self.taco = taco
        tacoLabel.text = taco.productName
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)

    }
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
