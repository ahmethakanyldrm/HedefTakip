//
//  CreateTargetViewController.swift
//  HedefTakip
//
//  Created by AHMET HAKAN YILDIRIM on 7.11.2022.
//

import UIKit

class CreateTargetViewController: UIViewController {

    // MARK: - UI ELEMENTS
    
    @IBOutlet weak var txtTargetNumber: UITextField!
    @IBOutlet weak var btnCreateTarget: UIButton!
    // MARK: - PROPERTİES
    
    // MARK: - LİFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        btnCreateTarget.keyboardCarry()
    }
    
    // MARK: - FUNCTİONS
    
    // MARK: - ACTİONS
    
    
    @IBAction func btnCreateTargetClicked(_ sender: UIButton) {
    }
}
