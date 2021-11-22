//
//  RegisterSchoolView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI

struct RegisterSchoolView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Register School")
                    .font(Font.custom("Arial-BoldMT", size: 30))
                    .offset(y:-75)
                    
                Text("School Name:")
                    .multilineTextAlignment(.leading)
                    .padding(.trailing,200)
                    .padding(.all)
                    .font(Font.custom("Arial-BoldMT", size: 20))
                    .offset(y:15.0)
                    .progressViewStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Style@*/DefaultProgressViewStyle()/*@END_MENU_TOKEN@*/)
                ZStack {
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 50)
                    .cornerRadius(5)
                    .scaledToFit()
                    .frame(width:300, height: 50)
                    .padding(.top, -15.0)
                    .textFieldStyle(/*@PLACEHOLDER=Text Field Style@*/DefaultTextFieldStyle())
                    TextField("Enter School Name Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .frame(width:350, height: 50)
                        .padding(.bottom)
                        .padding(.leading)
                }
                Text("Name used for students to look up their school")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30.0)
                    .padding(.bottom, 250)
                
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 65)
                    .cornerRadius(25)
                    .scaledToFit()
                    .frame(width:300, height: 50)
                    .offset(y:120)
                
                NavigationLink(destination: RegisterSchoolPG2View()) {
                    Text("Next")
                        .font(Font.custom("Arial-BoldMT", size: 16))
                        .multilineTextAlignment(.center)
                        
                        .foregroundColor(Color.white)
                }
                .offset(y:73)
                .padding(.all, 5.0)
            }
            .padding(.bottom)
            .imageScale(.medium)
        }
        
    }
}
struct RegisterSchool_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSchoolView()
    }
}
