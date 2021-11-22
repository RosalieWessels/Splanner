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
                Text("School Login")
                    .font(.custom("Arial-BoldMT", size: 35))
                
                Spacer()
                
                HStack {
                    
                    Text("School:")
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
                                    .foregroundColor(Color.orange)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            .padding(.horizontal)
                            Rectangle()
                                .fill(Color.orange)
                                .frame(height: 2)
                            
                        }
                    }
                    
                }
                
                HStack {
                    Text("Email:")
                        //.padding(.trailing, 30)
                    TextField("", text: $email)
                }
                HStack {
                    Text("Password:")
                        //.padding(.trailing, 275)
                    TextField("", text: $password)
                }
                
                Spacer()
                
                Button(action: {logIn()}) {
                    Text("Submit")
                }
                     
            }
        }
        else {
            StudentHomeView()
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

struct LoginSchoolView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSchoolView()
    }
}
