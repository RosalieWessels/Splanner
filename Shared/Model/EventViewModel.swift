//
//  EventViewModel.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import Foundation
import FirebaseFirestore
import Firebase

class eventViewModel: ObservableObject {

 @Published var events = [Event]()

 private var db = Firestore.firestore()

 func fetchData(email: String) {
     db.collection("event").whereField("person", isEqualTo: email).order(by: "startDate", descending: false).addSnapshotListener { (querySnapshot, error) in
         guard let documents = querySnapshot?.documents else {
             print("No documents")
             return
         }
         self.events = documents.map { (queryDocumentSnapshot) -> Event in
             let data = queryDocumentSnapshot.data()
             let title = data["title"] as? String ?? ""
             let startDate = (data["startDate"] as? Timestamp)?.dateValue() ?? Date()
             let endDate = (data["endDate"] as? Timestamp)?.dateValue() ?? Date()
             return Event(title: title, startDate: startDate, endDate: endDate)
         }
     }
 }
}
