//
//  EventModel.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import Foundation

 struct Event: Identifiable {
     var id: String = UUID().uuidString
     var title: String
     var startDate: Date
     var startDateString: String {
         let formatter = DateFormatter()
         formatter.dateFormat = "MMM d, h:mm a"
         return formatter.string(from: startDate)
     }
     var endDate: Date
     var endDateString: String {
         let formatter = DateFormatter()
         formatter.dateFormat = "MMM d, h:mm a"
         return formatter.string(from: endDate)
     }

 }

 extension Event: Equatable, Hashable {}
