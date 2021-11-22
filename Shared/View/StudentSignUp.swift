//
//  StudentSignUp.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI

struct StudentSignUp: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var school: String = ""
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
            Image("image")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
                .padding()
            Text("Student Sign Up")
                .padding()
                .font(.custom("Arial-BoldMT", size: 40))
            HStack(alignment: .center) {
                Text("name:")
                    .padding()
                TextField("enter name...", text: $name)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack(alignment: .center) {
                Text("email:")
                    .padding()
                TextField("enter email...", text: $email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack(alignment: .center) {
                Text("school:")
                    .padding()
                TextField("enter school...", text: $school)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Spacer()
                    .frame(minHeight: 10, idealHeight: 100, maxHeight: 600)
                    .fixedSize()
            Button(action: {
                print("button tapped!")
            }) {
                Text("submit")
                    .foregroundColor(.black)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(15)
            }
        }
        }
    }
}

struct StudentSignUp_Previews: PreviewProvider {
    static var previews: some View {
        StudentSignUp()
    }
}
