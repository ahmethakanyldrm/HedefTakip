//
//  AddTargetViewController.swift
//  HedefTakip
//
//  Created by AHMET HAKAN YILDIRIM on 7.11.2022.
//

import UIKit

class AddTargetViewController: UIViewController {

    // MARK: - UI ELEMENTS
    
    @IBOutlet weak var txtTargetDescription: UITextView!
    
    @IBOutlet weak var btnLongTerm: UIButton!
    
    @IBOutlet weak var btnMediumTerm: UIButton!
    
    @IBOutlet weak var btnShortTerm: UIButton!
    
    @IBOutlet weak var btnNext: UIButton!
    
    
    
    // MARK: - PROPERTİES
    
    var targetType : TargetTypes = .uzunVadeli
    
    // MARK: - LİFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        btnNext.keyboardCarry()
        
        btnLongTerm.selectedButtonBackgroundColor()
        btnMediumTerm.unSelectedButtonBackgroundColor()
        btnShortTerm.unSelectedButtonBackgroundColor()
        
        
    }
    
    // MARK: - FUNCTİONS
    
    // MARK: - ACTİONS
    
    
    @IBAction func btnLongTermClicked(_ sender: UIButton) {
        btnLongTerm.selectedButtonBackgroundColor()
        btnMediumTerm.unSelectedButtonBackgroundColor()
        btnShortTerm.unSelectedButtonBackgroundColor()
    }
    
    
    @IBAction func btnMediumTermClicked(_ sender: UIButton) {
        btnLongTerm.unSelectedButtonBackgroundColor()
        btnMediumTerm.selectedButtonBackgroundColor()
        btnShortTerm.unSelectedButtonBackgroundColor()
    }
    
    
    @IBAction func btnShortTermClicked(_ sender: UIButton) {
        btnLongTerm.unSelectedButtonBackgroundColor()
        btnMediumTerm.unSelectedButtonBackgroundColor()
        btnShortTerm.selectedButtonBackgroundColor()
    }
    
    
    @IBAction func btnNextClicked(_ sender: UIButton) {
    }
    
    
    @IBAction func btnBackClicked(_ sender: UIButton) {
        
        dismissNew()
        
    }
    
}
