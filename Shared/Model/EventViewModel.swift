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

 func fetchData() {
     db.collection("event").order(by: "date", descending: false).addSnapshotListener { (querySnapshot, error) in
         guard let documents = querySnapshot?.documents else {
             print("No documents")
             return
         }
         self.events = documents.map { (queryDocumentSnapshot) -> Event in
             let data = queryDocumentSnapshot.data()
             let title = data["title"] as? String ?? ""
             let dateEvent = (data["date"] as? Timestamp)?.dateValue() ?? Date()
             return Event(title: title, dateEvent: dateEvent)
         }
     }
 }
}
