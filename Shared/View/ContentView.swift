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
        ZStack {
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            Image("Saly-26")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            VStack {
                Image("splanner_transparent copy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Spacer()
                Spacer()
                Spacer()
                
                Text("Register As:").font(Font.custom("Arial-BoldMT", size: 45)).foregroundColor(Color.blue).padding(.vertical, 50)
                
                Button(action: SchoolButton){
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(Color.blue)
                            .frame(width: 200, height: 90)
                        
                        Text("School").font(Font.custom("Arial-BoldMT", size: 30)).foregroundColor(Color.white)
                    }
                }.padding()
                
                
                Button(action: StudentButton){
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(Color.blue)
                            .frame(width: 200, height: 90)
                        
                        Text("Student").font(Font.custom("Arial-BoldMT", size: 30)).foregroundColor(Color.white)
                    }
                }.padding()
                
                
                
                
            }
        }
    }
    func SchoolButton(){
        print("School Button Works!")
    }
    
    func StudentButton(){
        print("Student Button Works!")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
