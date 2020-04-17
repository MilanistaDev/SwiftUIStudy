//
//  SecureTextField.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/17.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct SecureTextField: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Login")
                .font(.title)
                .foregroundColor(.red)
                .padding([.leading, .top], 20.0)
            MailAddressView()
            PasswordView()
            Spacer()
            LoginButton()
        }
        .navigationBarTitle("SecureTextField", displayMode: .inline)
    }
}

struct SecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextField()
    }
}
