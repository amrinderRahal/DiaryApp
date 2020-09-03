//
//  DiaryDetailCell.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import UIKit

class DiaryDetailCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtDescription: UITextView!
    @IBOutlet weak var lblTimeStamp: UILabel!
    @IBOutlet weak var btnRemove: UIButton!
    @IBOutlet weak var viewDetailFrame: UIView!
    @IBOutlet weak var viewTopSection: UIView!
    @IBOutlet weak var lblDays: UILabel!
    
    var remove :(()->Void)?
    var edit :(()->Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
    }
    
    func setupUI() {
        DispatchQueue.main.async {
            self.btnRemove.makeRound()
            self.viewDetailFrame.setShadow()
            self.viewDetailFrame.cornerRound(radius: 8, clipBounds: false)
        }
    }
    
    @IBAction func btnRemove(_ sender: Any) {
        self.remove?()
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        self.edit?()
    }
    
}
