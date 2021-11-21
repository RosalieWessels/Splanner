//
//  RegisterSchool.swift
//  Splanner
//
//  Created by Seika Oelschig on 11/21/21.
//

import SwiftUI

struct RegisterSchool: View {
    var body: some View {
        VStack {
                
            Text("School Sign-Up")
                .font(Font.custom("Arial-BoldMT", size: 30))
                .offset(y:-75)
            
            Text("School:")
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
                .textFieldStyle(/*@PLACEHOLDER=Text Field Style@*/DefaultTextFieldStyle())
                TextField("Enter School Name Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 50)
                    .padding(.bottom)
                    .padding(.leading)
            }
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
            TextField("Enter Admin Email Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.gray)
                .frame(width:350, height: 50)
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
            TextField("Enter New Password Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.gray)
                .frame(width:350, height: 50)
                .padding(.bottom)
                .padding(.leading)
            }
            Rectangle()
                .foregroundColor(Color.gray)
                .frame(width:350, height: 65)
                .cornerRadius(25)
                .scaledToFit()
                .frame(width:300, height: 50)
                .offset(y:175)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Submit")
                    .font(Font.custom("Arial-BoldMT", size: 16))
                    .offset(y:128)
                    .foregroundColor(Color.white)
            }
            .padding(.all, 5.0)
        }
        .imageScale(.medium)
            }
        }
struct RegisterSchool_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSchool()
    }
}
