//
//  RegisterSchoolPG2View.swift
//  Splanner
//
//  Created by Seika Oelschig on 11/21/21.
//

import SwiftUI

struct RegisterSchoolPG3View: View {
    var body: some View {
        ZStack {
            Color("backgroundColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Register School")
                    .font(Font.custom("Arial-BoldMT", size: 30))
                    .offset(y:-75)
                Text("Create Student Access Code:")
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 55)
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
                TextField("Enter Access Code Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 50)
                    .padding(.bottom)
                    .padding(.leading)
                }
                Text("Code used for students to access school's schedule")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10.0)
                    .padding(.bottom, 175)
                
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width:350, height: 65)
                    .cornerRadius(25)
                    .scaledToFit()
                    .frame(width:300, height: 50)
                    .offset(y:160)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Done")
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

struct RegisterSchoolPG3View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RegisterSchoolPG3View()
            }
        }
    }
