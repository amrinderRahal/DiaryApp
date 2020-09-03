//
//  ViewController.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import UIKit

class MyDiaryVC: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTable()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.reloadTable()
    }
    
    
    func registerTable()  {
        self.tblView.register(UINib(nibName: "DiaryDetailCell", bundle: nil), forCellReuseIdentifier: "DiaryDetailCell")
        self.tblView.delegate = self
        self.tblView.dataSource = self
        self.reloadTable()
    }
    
    func reloadTable() {
        arrDiaryNotes.sort { (note1, note2) -> Bool in
            return (note1.date ?? Date()) > (note2.date ?? Date())
        }
        DispatchQueue.main.async {
            self.tblView.reloadData()
        }
    }
    
    

}
extension MyDiaryVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrDiaryNotes.count
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = DiaryNotesHeaderView()
        let headerData = arrDiaryNotes[section]
        header.lblDate.text = headerData.date?.calenderDateSinceNow()
        return header
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDiaryNotes[section].details.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblView.dequeueReusableCell(withIdentifier: "DiaryDetailCell", for: indexPath) as! DiaryDetailCell
        let note = arrDiaryNotes[indexPath.section].details[indexPath.row]
        cell.lblTitle.text = note.title
        cell.txtDescription.text = note.description
        cell.lblTimeStamp.text = arrDiaryNotes[indexPath.section].date?.calenderTimeSinceNow()
        cell.edit = { [weak self] in
            let vc = self?.storyboard?.instantiateViewController(withIdentifier: "DiaryDetailVC") as! DiaryDetailVC
            vc.index = indexPath
            self?.navigationController?.pushViewController(vc, animated: true)
        }
        
        cell.remove = { [weak self] in
            if arrDiaryNotes[indexPath.section].details.count == 1{
                arrDiaryNotes.remove(at: indexPath.section)
            }else{
                arrDiaryNotes[indexPath.section].details.remove(at: indexPath.row)
            }
            DispatchQueue.main.async {
                self?.tblView.reloadData()
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         44
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
}
