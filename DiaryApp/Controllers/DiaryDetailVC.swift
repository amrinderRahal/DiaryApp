//
//  DiaryDetailVC.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import UIKit

class DiaryDetailVC: UIViewController {

    
    @IBOutlet weak var txtTitle: UITextView!
    @IBOutlet weak var txtDescription: UITextView!
    
    @IBOutlet weak var btnSave: UIButton!
    
    var index:IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.loadData()
    }
    
    func setupUI() {
        DispatchQueue.main.async {
            self.btnSave.cornerRound(radius: 5, clipBounds: true)
            self.navigationItem.title = "Diary Title"
            self.txtTitle.setupToolBar()
            self.txtDescription.setupToolBar() 
        }
    }
    
    func loadData() {
        if let index = index{
            self.txtTitle.text = arrDiaryNotes[index.section].details[index.row].title
            self.txtDescription.text = arrDiaryNotes[index.section].details[index.row].description
        }
    }
    
    @objc func btnBack(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func btnSave(_ sender: Any) {
        if let index = index{
            arrDiaryNotes[index.section].details[index.row].title = self.txtTitle.text
            arrDiaryNotes[index.section].details[index.row].description = self.txtDescription.text
        }
        self.navigationController?.popViewController(animated: false)
    }
    

}
