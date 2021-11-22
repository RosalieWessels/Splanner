//
//  StudentHomeView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI
import Combine
import Firebase

struct StudentHomeView: View {
    
    private var db = Firestore.firestore()
    @State var classes = [Event]()
    @AppStorage("email") var appStorageEmail = ""


    var body: some View {
        ScrollView {
            if classes.count > 0 {
                VStack {
                    HStack {
                        Text("Your Schedule.")
                            .font(.custom("Arial-BoldMT", size: 35))
                            .padding(.top)
                            .padding(.bottom, 5)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Monday November 22nd, 2021")
                            .font(.custom("Arial-BoldMT", size: 20))
                            .padding(.bottom)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ForEach(classes) { event in
                        HStack {
                            Color("eventColor")
                                .frame(width: 7)
                            VStack (alignment: .leading) {
                                Text(event.title)
                                    .font(.custom("Arial-BoldMT", size: 25))
                                Text("\(event.startDateString) - \(event.endDateString)")
                                    .font(.custom("Arial", size: 15))
                            }
                            .padding()
                            Spacer()
                        }
                        .background(Color("eventColor").opacity(0.5))
                        .cornerRadius(20)
                        .frame(maxHeight: 200)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    Spacer()
                }
            }
        }
        .background(Color("backgroundColor").edgesIgnoringSafeArea(.all))
        .onAppear(perform: {
            getClasses()
            addNotifications()
            
       })
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
    func getClasses() {
        print(appStorageEmail)
        db.collection("event").order(by: "startDate", descending: false)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    print (querySnapshot!.documents)
                    for document in querySnapshot!.documents {
                        let data = document.data()
                        print(data)
                        let title = data["title"] as? String ?? ""
                        let person = data["person"] as? String ?? ""
                        let startDate = (data["startDate"] as? Timestamp)?.dateValue() ?? Date()
                        let endDate = (data["endDate"] as? Timestamp)?.dateValue() ?? Date()
                        print(title)
                        print(person)
                        if person == appStorageEmail {
                            print("YESS")
                            print(classes.count)
                            classes.append(Event(title: title, startDate: startDate, endDate: endDate))
                            print(classes.count)
                        }

                    }

                }
        }
    }
    
    func addNotifications() {
        db.collection("Pinewood High School").whereField("Student email", isEqualTo: appStorageEmail)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    print (querySnapshot!.documents)
                    for document in querySnapshot!.documents {
                        let data = document.data()
                        print(data)
                        let subscribed = data["subscribed"] as? Array ?? []
                        
                        for code in subscribed {
                            Messaging.messaging().subscribe(toTopic: code as! String) { error in
                              print("Subscribed to \(code) topic")
                            }
                        }

                    }

                }
        }
    }
}


struct StudentHomeView_Previews: PreviewProvider {
 static var previews: some View {
     StudentHomeView()
 }
}
