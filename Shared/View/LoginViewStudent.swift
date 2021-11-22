//
//  SchoolLoginView.swift
//  Splanner
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI

import SwiftUI

struct LoginStudentView: View {
    var body: some View {
        
        VStack {
            Text("Student Login")
                .font(Font.custom("Arial-BoldMT", size: 30))
                .padding(.bottom, 50)
            
            Text("Email:")
                .multilineTextAlignment(.leading)
                .padding(.trailing,300)
                .padding(.all)
                .font(Font.custom("Arial-BoldMT", size: 16))
            Rectangle()
                .foregroundColor(Color.gray)
                .frame(width:350, height: 50)
                .cornerRadius(5)
                .scaledToFit()
                .frame(width:300, height: 50)
                .padding(.top, -15.0)
            Text("Password:")
                .multilineTextAlignment(.leading)
                .padding(.trailing,280)
                .padding(.leading)
                .padding(.all)
                .font(Font.custom("Arial-BoldMT", size: 16))
            Rectangle()
                .foregroundColor(Color.gray)
                .frame(width:350, height: 50)
                .cornerRadius(5)
                .scaledToFit()
                .frame(width:300, height: 50)
                .padding(.top, -15.0)
                .padding(.bottom, 400)
            ZStack {
            Rectangle()
                .foregroundColor(Color.gray)
                .frame(width:350, height: 65)
                .cornerRadius(25)
                .scaledToFit()
            
            Button(action: {}) {
                Text("Done")
                    .font(Font.custom("Arial-BoldMT", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
            }
            .padding(.all, 5.0)
        }
        .imageScale(.medium)
                       }
}


struct LoginStudentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginStudentView()
        }
    }
}
