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
     var dateEvent: Date
     var dateString: String {
         let formatter = DateFormatter()
         formatter.dateFormat = "MMM d, h:mm a"
         return formatter.string(from: dateEvent)
     }

 }

 extension Event: Equatable, Hashable {}
