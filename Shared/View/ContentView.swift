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
    @State var CorrectStudentPage = String("")
    @State var CorrectAdminPage = String("")
    
    init(){
        //database work
        
    }
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack () {
                    Image("schoolbooks")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 50)
                        .offset(y: -70)
                    
                    Spacer()
                }
                
                VStack {
                    Image("splanner_transparent copy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Register As:").font(Font.custom("Arial-BoldMT", size: 45)).foregroundColor(Color.blue).padding(.vertical, 30)
                    
                    NavigationLink(destination: LoginSchoolView()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color.blue.opacity(0.7))
                                .frame(width: 200, height: 50)
                            
                            Text("School").font(Font.custom("Arial-BoldMT", size: 30)).foregroundColor(Color.white)
                        }
                    }.padding(.horizontal)
                    NavigationLink(destination: RegisterSchoolView()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color.blue.opacity(0.7))
                                .frame(width: 200, height: 50)
                            
                            Text("Register School").font(Font.custom("Arial-BoldMT", size: 20)).foregroundColor(Color.white)
                        }
                    }.padding(.bottom)
                    
                    
                    NavigationLink(destination: LoginStudentView()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color.blue.opacity(0.7))
                                .frame(width: 200, height: 50)
                            
                            Text("Student").font(Font.custom("Arial-BoldMT", size: 30)).foregroundColor(Color.white)
                        }
                    }.padding(.horizontal)
                    NavigationLink(destination: StudentSignUp()){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color.blue.opacity(0.7))
                            
                                .frame(width: 200, height: 50)
                            
                            Text("Register Student").font(Font.custom("Arial-BoldMT", size: 20)).foregroundColor(Color.white)
                        }
                    }.padding(.bottom)
                    
                    
                    
                    
                }
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
