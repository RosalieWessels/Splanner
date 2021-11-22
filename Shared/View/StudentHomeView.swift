//
//  StudentHomeView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI
import EventKit
import Combine

struct StudentHomeView: View {

    @ObservedObject private var viewModel = eventViewModel()
    @State var classes = []
    @AppStorage("email") var appStorageEmail = ""

    init() {
     let calendar = Calendar.current
     print(calendar)
        self.viewModel.fetchData(email: appStorageEmail)
    }

    var body: some View {
        ScrollView {
            if viewModel.events.count >= 2 {
                VStack {
                    HStack {
                        Text("Your Schedule.")
                            .font(.custom("Arial-BoldMT", size: 35))
                            .padding(.vertical)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ForEach(viewModel.events) { event in
                        HStack {
                            Color("backgroundColor")
                                .frame(width: 10)
                            VStack (alignment: .leading) {
                                Text(event.title)
                                    .font(.custom("Arial-BoldMT", size: 25))
                                Text("\(event.startDateString) - \(event.endDateString)")
                                    .font(.custom("Arial", size: 15))
                            }
                            .padding()
                            Spacer()
                        }
                        .background(Color("backgroundColor").opacity(0.5))
                        .cornerRadius(20)
                        .frame(maxHeight: 200)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    Spacer()
                }
            }
        }
        
        .navigationBarBackButtonHidden(true)
    }
}


struct StudentHomeView_Previews: PreviewProvider {
 static var previews: some View {
     StudentHomeView()
 }
}


//VStack {
//    HStack {
//        Text("Your Schedule.")
//            .font(.custom("Arial-BoldMT", size: 35))
//        Spacer()
//    }
//    .padding(.horizontal)
//
//
//
//    List(viewModel.events) { event in
//        HStack {
//            Color("backgroundColor")
//                .frame(width: 5)
//            VStack(alignment: .leading) {
//                Text(event.title)
//                    .font(.custom("Arial-BoldMT", size: 25))
//                HStack {
//                    Text("\(event.startDateString) - \(event.endDateString)")
//                        .font(.custom("Arial", size: 15))
//                }
//
//            }
//            Spacer()
//
//        }
//
//    }
//    .navigationBarTitle("Events")
//    .onAppear() {
//        self.viewModel.fetchData()
//    }
//}
//
//}
