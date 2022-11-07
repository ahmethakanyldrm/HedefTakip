//
//  UIViewExtension.swift
//  HedefTakip
//
//  Created by AHMET HAKAN YILDIRIM on 7.11.2022.
//

import Foundation
import UIKit

extension UIView {
    func keyboardCarry(){
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardChange(_:)), name:UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keyboardChange(_ notification : NSNotification){
        
        // klavyenin yerini değiştirme süresi
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        
        let startKeyboardFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        
        let finishKeyboardFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        let differenceY = finishKeyboardFrame.origin.y - startKeyboardFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: KeyframeAnimationOptions.init(rawValue: curve)) {
            self.frame.origin.y += differenceY
        }
    }
}
