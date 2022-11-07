//
//  TargetsListVC.swift
//  HedefTakip
//
//  Created by AHMET HAKAN YILDIRIM on 1.11.2022.
//

import UIKit

class TargetsListVC: UIViewController{

    // MARK: - UI ELEMENTS
    
    @IBOutlet weak var tableview: UITableView!
    

    
    
    // MARK: - PROPERTİES
    
    // MARK: - LİFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    // MARK: - FUNCTİONS
    
    // MARK: - ACTİONS
    
    
    @IBAction func btnAddClicked(_ sender: UIButton) {
    }
    

}

extension TargetsListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "targetCell") as? TargetCell else {
            return UITableViewCell()
            
        }
        
        cell.setView(description: "Haftada 4 Gün Yüz", type: TargetTypes.ortaVadeli, targetNum: 4)
        
        return cell
        
        
    }
}


    
  
    
    
    

