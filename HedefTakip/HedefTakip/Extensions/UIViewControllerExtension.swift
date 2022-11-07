//
//  UIViewControllerExtension.swift
//  HedefTakip
//
//  Created by AHMET HAKAN YILDIRIM on 7.11.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func presentNew(_ viewControllertoPresent: UIViewController) {
        
        let transition = CATransition()
        transition.duration = 0.6
        transition.type = .push
        transition.subtype = .fromRight
        self.view.window?.layer.add(transition, forKey: "presentAnimasyon")
        present(viewControllertoPresent, animated: false)
        
    }
    
    func dismissNew(){
        
        let transition = CATransition()
        transition.duration = 0.6
        transition.type = .push
        transition.subtype = .fromLeft
        self.view.window?.layer.add(transition, forKey: "dismissAnimasyon")
        dismiss(animated: false)
        
        
    }
}
