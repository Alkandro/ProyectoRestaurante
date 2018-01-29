//
//  CustomCellPlatosTableViewCell.swift
//  Proyecto-Restarurante
//
//  Created by Alejandro Sklar on 6/11/17.
//  Copyright © 2017 Alejandro Sklar. All rights reserved.
//

import UIKit

class CustomCellPlatosTableViewCell: UITableViewCell {

    @IBOutlet var imagenCellP: UIImageView!
    
    @IBOutlet var tituloCellP: UILabel!
    
    @IBOutlet var descripcionCellP: UILabel!
    
    @IBOutlet var precioCellP: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
