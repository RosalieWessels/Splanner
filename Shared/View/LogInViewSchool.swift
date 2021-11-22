//
//  StudentLogInView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI
import Firebase
import Combine

struct LoginSchoolView: View {
    @State var email: String = ""
    @State var school: String = ""
    @State var password: String = ""
    @State var value = ""
    var placeholder = "Select School"
    var dropDownList = ["Pinewood Upper Campus", "Pinewood Middle Campus", "Pinewood Lower Campus"]
    @AppStorage("email") var appStorageEmail = ""
    @State var loggedIn = false
    @State var user = Auth.auth().currentUser
    
    var body: some View {
        if loggedIn == false {
            VStack {
                //dropdown
                Text("School Log-in")
                    .font(.custom("Arial-BoldMT", size: 35))
                    .padding(.top, 50)
                
                Spacer()
                
                HStack {
                    Menu {
                        ForEach(dropDownList, id: \.self){ school in
                            Button(school) {
                                self.value = school
                            }
                        }
                    } label: {
                        VStack(spacing: 5){
                            HStack{
                                Text(value.isEmpty ? placeholder : value)
                                    .foregroundColor(value.isEmpty ? .gray : .black)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .foregroundColor(Color.blue)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            .padding(.horizontal)
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height: 2)
                                .padding(.bottom, 25)
                            Text("Email:")
                                .multilineTextAlignment(.leading)
                                .padding(.trailing,250)
                                .padding(.all)
                                .font(Font.custom("Arial-BoldMT", size: 20))
                                .offset(y:15.0)
                                .foregroundColor(Color.black)
                            ZStack {
                            Rectangle()
                                .foregroundColor(Color.gray)
                                .frame(width:350, height: 50)
                                .cornerRadius(5)
                                .scaledToFit()
                                .frame(width:300, height: 50)
                                .padding(.top, -15.0)
                            TextField("Enter Email Here", text: $email)
                                .foregroundColor(Color.gray)
                                .frame(width:350, height: 50)
                                .padding(.bottom)
                                .padding(.leading, -195)
                            }
                            Text("Password:")
                                .multilineTextAlignment(.leading)
                                .padding(.trailing,210)
                                .padding(.all)
                                .font(Font.custom("Arial-BoldMT", size: 20))
                                .offset(y:15.0)
                                .foregroundColor(Color.black)
                            ZStack {
                            Rectangle()
                                .foregroundColor(Color.gray)
                                .frame(width:350, height: 50)
                                .cornerRadius(5)
                                .scaledToFit()
                                .frame(width:300, height: 50)
                                .padding(.top, -15.0)
                                .padding(.bottom, 285)
                            TextField("Enter Password Here", text: $password)
                                .foregroundColor(Color.gray)
                                .frame(width:350, height: 50)
                                .padding(.bottom, 300)
                                .padding(.leading, -160)
                                
                                Spacer()
                                
                                Rectangle()
                                    .foregroundColor(Color.gray)
                                    .frame(width:350, height: 65)
                                    .cornerRadius(25)
                                    .scaledToFit()
                                    .frame(width:300, height: 50)
                                    .offset(y:40)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Text("Next")
                                        .font(Font.custom("Arial-BoldMT", size: 16))
                                        .multilineTextAlignment(.center)
                                        .padding(.bottom)
                                        .offset(y:48)
                                        .foregroundColor(Color.white)
                            
                            }
                        }
                    }
                    
                }
                
                
                
                
                
                    
                }
                     
            }
        }
        else {
            StudentHomeView()
        }
    }
}

struct LoginSchoolView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSchoolView()
    }
}

