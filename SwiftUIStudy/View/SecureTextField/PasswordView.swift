//
//  PasswordView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/17.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct PasswordView: View {

    @State private var password: String = ""
    @State private var isSecured: Bool = true

    var body: some View {
        HStack {
            if self.isSecured {
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 20.0)
            } else {
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 20.0)
            }
            Button(action: {
                self.isSecured.toggle()
            }) {
                self.isSecured ?
                    Image(systemName: "eye.slash.fill") :
                    Image(systemName: "eye.fill")
            }
            .foregroundColor(.gray)
            .padding(.trailing, 20.0)
        }
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
