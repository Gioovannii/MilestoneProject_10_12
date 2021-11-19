////
////  Date + Formatted.swift
////  MilestoneProject_10_12
////
////  Created by Giovanni Gaffé on 2021/11/19.
////


import Foundation

extension String {
    func convertDateFormat(inputDate: String) -> String {
        
        let olDateFormatter = DateFormatter()
        olDateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let oldDate = olDateFormatter.date(from: inputDate)
        
        let convertDateFormatter = DateFormatter()
        convertDateFormatter.locale = .current
        //Locale(identifier: "fr_FR")
        convertDateFormatter.dateStyle = .long
        convertDateFormatter.timeStyle = .short
        
        return convertDateFormatter.string(from: oldDate!)
    }
}
