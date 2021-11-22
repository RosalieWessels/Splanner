//
//  SchoolLoginView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI

import Firebase
import Combine

struct LoginStudentView: View {
    @State var password = ""
    @State var email = ""
    @AppStorage("email") var appStorageEmail = ""
    @State var loggedIn = false
    @State var user = Auth.auth().currentUser
    
    var body: some View {
        VStack {
            
        if loggedIn == false {
            ZStack {
                Color("backgroundColor").edgesIgnoringSafeArea(.all)
                
                VStack {
                           Text("Student Login")
                               .font(Font.custom("Arial-BoldMT", size: 30))
                               .padding(.bottom, 50)
                           
                           Text("Email:")
                               .multilineTextAlignment(.leading)
                               .padding(.trailing,300)
                               .padding(.all)
                               .font(Font.custom("Arial-BoldMT", size: 16))
                       ZStack {
                           Rectangle()
                               .foregroundColor(Color.gray)
                               .frame(width:350, height: 50)
                               .cornerRadius(5)
                               .scaledToFit()
                               .frame(width:300, height: 50)
                               .padding(.top, -15.0)
                           TextField("Enter Email Here", text: $email)
                               .foregroundColor(Color.white)
                               .frame(width:350, height:50)
                               .padding(.bottom)
                               .padding(.leading)
                                       }
                           Text("Password:")
                               .multilineTextAlignment(.leading)
                               .padding(.trailing,280)
                               .padding(.leading)
                               .padding(.all)
                               .font(Font.custom("Arial-BoldMT", size: 16))
                       ZStack {
                           Rectangle()
                               .foregroundColor(Color.gray)
                               .frame(width:350, height: 50)
                               .cornerRadius(5)
                               .scaledToFit()
                               .frame(width:300, height: 50)
                               .padding(.top, -15.0)
                           SecureField("Enter Password Here", text: $password)
                               .foregroundColor(Color.white)
                               .frame(width:350, height:50)
                               .padding(.bottom)
                               .padding(.leading)
                           
                            }
                    Spacer()
                           
                           ZStack {
                           Rectangle()
                               .foregroundColor(Color.gray)
                               .frame(width:350, height: 65)
                               .cornerRadius(25)
                               .scaledToFit()
                           
                               Button(action: {logIn()}) {
                               Text("Done")
                                   .font(Font.custom("Arial-BoldMT", size: 16))
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(Color.white)
                           }
                           .padding(.all, 5.0)
                       }
                       .imageScale(.medium)
                    
                    Spacer()
                }
            }
               
            }
            else {
                StudentHomeView()
            }
        }
    }
        
        
        func logIn() {
            if email == "" || password == "" {
                return
            }

            Auth.auth().signIn(withEmail: email, password: password) { (result, err) in
                
                if err != nil {
                    print(err!.localizedDescription)
                    return
                }
                
                let user = Auth.auth().currentUser
                print("successful login!")
                loggedIn = true
                appStorageEmail = email
                
            }
        }
}


struct LoginStudentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginStudentView()
        }
    }

