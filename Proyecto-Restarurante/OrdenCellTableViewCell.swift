//
//  OrdenCellTableViewCell.swift
//  Proyecto-Restarurante
//
//  Created by Alejandro Sklar on 27/1/18.
//  Copyright © 2018 Alejandro Sklar. All rights reserved.
//

import UIKit

class OrdenCellTableViewCell: UITableViewCell {

    @IBOutlet weak var precioTotalCell: UILabel!
    @IBOutlet weak var precioUnitarioCell: UILabel!
    @IBOutlet weak var nombreCell: UILabel!
    @IBOutlet weak var cantidadCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func calculoSemiTotal()->Float{
        let cant = cantidadCell.text
        let cantNum = Float(cant!)
        
        let precioUnit = precioUnitarioCell.text
        let precioNum = Float(precioUnit!)
        
        let semitotal = cantNum! * precioNum!
        return semitotal
    }
}
