//
//  UIView+Extension.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import UIKit

extension UIView{
    
    func cornerRound(radius:Int = 10, clipBounds:Bool = true){
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = clipBounds
    }
    
    func makeRound(){
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
    
    func setShadow(color:UIColor = UIColor.darkGray.withAlphaComponent(0.8), offset:CGSize = .zero){
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = 5
    }
    
    
    func setBoarderColor(color:UIColor = .darkGray, width: CGFloat = 0.8){
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 0.8
    }
    
}
