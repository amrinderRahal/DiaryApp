//
//  HelperFunctions.swift
//  DiaryApp
//
//  Created by apple on 03/09/20.
//  Copyright © 2020 amrinder. All rights reserved.
//

import Foundation


class Helper {
    
   static let shared = Helper()
    
    
    func convertInDate(format:String,date:String) -> Date?{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let currentDate = formatter.date(from: date)
        return currentDate
    }
    
}
