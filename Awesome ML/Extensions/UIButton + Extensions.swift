//
//  UIButton + Extensions.swift
//  Awesome ML
//
//  Created by Eugene Bokhan on 3/13/18.
//  Copyright © 2018 Eugene Bokhan. All rights reserved.
//

import Foundation

public extension UIButton {
    
    func createShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3.0
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.masksToBounds = false
    }
    
    func setTitle(_ newTitle: String) {
        UIView.transition(with: self,
                          duration:0.3,
                          options: .transitionCrossDissolve,
                          animations: { self.setTitle(newTitle, for: .normal) },
                          completion: nil)
    }
    
}
