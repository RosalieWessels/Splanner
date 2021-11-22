//
//  RegisterSchoolPG2View.swift
//  Splanner
//
//  Created by Seika Oelschig on 11/21/21.
//

import SwiftUI

struct RegisterSchoolPG2View: View {
    var body: some View {
        ZStack {
            Color("backgroundColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Register School")
                    .font(Font.custom("Arial-BoldMT", size: 30))
                    .offset(y:-75)
                Text("Email:")
                    .multilineTextAlignment(.leading)
                    .padding(.trailing,250)
                    .padding(.all)
                    .font(Font.custom("Arial-BoldMT", size: 20))
                    .offset(y:15.0)
                ZStack {
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 50)
                    .cornerRadius(5)
                    .scaledToFit()
                    .frame(width:300, height: 50)
                    .padding(.top, -15.0)
                TextField("Enter Email Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 50)
                    .padding(.bottom)
                    .padding(.leading)
                }
                Text("Password:")
                    .multilineTextAlignment(.leading)
                    .padding(.trailing,210)
                    .padding(.all)
                    .font(Font.custom("Arial-BoldMT", size: 20))
                    .offset(y:15.0)
                ZStack {
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 50)
                    .cornerRadius(5)
                    .scaledToFit()
                    .frame(width:300, height: 50)
                    .padding(.top, -15.0)
                TextField("Enter Password Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .frame(width:350, height: 50)
                    .padding(.bottom)
                    .padding(.leading)
                }
                Text("School admin email and password to access school's schedule editor")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10.0)
                    .padding(.bottom, 70)
                
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 65)
                    .cornerRadius(25)
                    .scaledToFit()
                    .frame(width:300, height: 50)
                    .offset(y:160)
                
                NavigationLink(destination: RegisterSchoolPG3View()) {
                    Text("Next")
                        .font(Font.custom("Arial-BoldMT", size: 16))
                        .multilineTextAlignment(.center)
                        .offset(y:113)
                        .foregroundColor(Color.white)
                }
                .padding(.all, 5.0)
            }
            .imageScale(.medium)
        }
        
    }
}

struct RegisterSchoolPG2View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RegisterSchoolPG2View()
            RegisterSchoolPG2View()
            }
        }
    }
