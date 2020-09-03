//
//  DiaryNotesHeaderView.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import UIKit

class DiaryNotesHeaderView: UIView {

    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lblDate: UILabel!
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          self.setupView()
      }
      
      
      required init?(coder: NSCoder) {
          super.init(coder: coder)
          self.setupView()
      }
      
      
      func setupView() {
          Bundle.main.loadNibNamed("DiaryNotesHeaderView", owner: self, options: nil)
          self.contentView.frame = self.bounds
          self.addSubview(self.contentView)
          self.contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
      }
      
}
