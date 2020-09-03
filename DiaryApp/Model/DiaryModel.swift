//
//  DiaryModel.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import Foundation


struct DiaryStruct {
    var date: Date?
    var details: [DiaryDetailStruct]
}

struct DiaryDetailStruct {
    var title:String?
    var description:String?
}


var arrDiaryNotes = [
       DiaryStruct(date:  Helper.shared.convertInDate(format: "dd/MM/yyyy", date: "01/09/2020"), details: [
                                    DiaryDetailStruct(title: "ndjsnd", description: "cksncjbch nsn snbns cnsbncn sbcn chsbdns csbnc sd"),
                                    DiaryDetailStruct(title: "xsns cns ", description: "ckncjscs nchsc ansbch chbchane cjehbcne cje en chesbc enchecdc ds cheec ejcensncjbchd"),
                                    DiaryDetailStruct(title: "ndjdnb sndnssnd", description: " snjqsn dsbdhs chsbcd chdbdnc dhbnd cjebcnd chsbcns cnsbcns cnsbc cbccksncjbchd")]),
       DiaryStruct(date: Helper.shared.convertInDate(format: "dd/MM/yyyy", date: "02/09/2020"), details: [
                    DiaryDetailStruct(title: "ndjsnd", description: "cksncjbch nsn snbns cnsbncn sbcn chsbdns csbnc sd"),
                    DiaryDetailStruct(title: "xsns cns ", description: "ckncjscs nchsc ansbch chbchane cjehbcne cje en chesbc enchecdc ds cheec ejcensncjbchd"),
                    DiaryDetailStruct(title: "ndjdnb sndnssnd", description: " snjqsn dsbdhs chsbcd chdbdnc dhbnd cjebcnd chsbcns cnsbcns cnsbc cbccksncjbchd")]),
       
       DiaryStruct(date: Helper.shared.convertInDate(format: "dd/MM/yyyy", date: "03/09/2020"), details: [
                    DiaryDetailStruct(title: "ndjsnd", description: "cksncjbch nsn snbns cnsbncn sbcn chsbdns csbnc sd"),
                    DiaryDetailStruct(title: "xsns cns ", description: "ckncjscs nchsc ansbch chbchane cjehbcne cje en chesbc enchecdc ds cheec ejcensncjbchd"),
                    DiaryDetailStruct(title: "ndjdnb sndnssnd", description: " snjqsn dsbdhs chsbcd chdbdnc dhbnd cjebcnd chsbcns cnsbcns cnsbc cbccksncjbchd")])
       
    
]
