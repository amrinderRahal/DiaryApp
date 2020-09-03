//
//  Date+Extension.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import UIKit

extension UITextView{
   func setupToolBar() {
       let screenWidth = UIScreen.main.bounds.width
       // Create a toolbar and assign it to inputAccessoryView
       let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0))
       let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
       let barButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: #selector(tapCancel))
       toolBar.setItems([flexible, barButton], animated: false)
       self.inputAccessoryView = toolBar
   }
    
    @objc func tapCancel() {
        self.resignFirstResponder()
    }
    
}
