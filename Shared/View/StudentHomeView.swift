//
//  StudentHomeView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI
import EventKit

struct StudentHomeView: View {

 @ObservedObject private var viewModel = eventViewModel()

 init() {
     let calendar = Calendar.current
     print(calendar)
 }

 var body: some View {
     VStack {
         HStack {
             Text("Your Schedule.")
             Spacer()
         }

         List(viewModel.events) { event in
             VStack(alignment: .leading) {
                 Text(event.title).font(.title)
                 Text(event.dateString).font(.title3)
             }
         }.navigationBarTitle("Events")
         .onAppear() {
             self.viewModel.fetchData()
         }
     }

 }
}


struct StudentHomeView_Previews: PreviewProvider {
 static var previews: some View {
     StudentHomeView()
 }
}
