//
//  ContentView.swift
//  Shared
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var db = Firestore.firestore()
    
    init() {
        //database work
    }
    
    var body: some View {
        Text("Splanner")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
