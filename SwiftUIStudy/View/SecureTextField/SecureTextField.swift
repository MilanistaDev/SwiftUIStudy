//
//  SecureTextField.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/17.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct SecureTextField: View {

    @State private var mailAddress: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Login")
                .font(.title)
                .foregroundColor(.red)
                .padding([.leading, .top], 20.0)
            TextField("Mail address", text: $mailAddress)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(20.0)
            PasswordView()
            Spacer()
            LoginButton()
        }
        .navigationBarTitle("SecureTextField", displayMode: .inline)
    }
}

struct LoginButton: View {
    var body: some View {
        Button(action: {

        }) {
            Text("Login")
                .font(Font.body.bold())
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 44.0)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(5.0)
        }
        .padding(20.0)
    }
}

struct SecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextField()
    }
}
