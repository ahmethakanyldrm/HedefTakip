//
//  TargetCell.swift
//  HedefTakip
//
//  Created by AHMET HAKAN YILDIRIM on 2.11.2022.
//

import UIKit

class TargetCell: UITableViewCell {


    @IBOutlet weak var lblTargetDescription: UILabel!
    @IBOutlet weak var lblTargetType: UILabel!
    @IBOutlet weak var lblTargetNumber: UILabel!
    
    func setView(description:String, type:TargetTypes, targetNum: Int) {
        lblTargetDescription.text = description
        lblTargetType.text = type.rawValue
        lblTargetNumber.text = String(targetNum)
    }
    
}
