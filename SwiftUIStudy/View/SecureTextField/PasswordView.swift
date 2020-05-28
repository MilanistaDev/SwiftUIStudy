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
        VStack(alignment: .leading) {
            Text("Password")
                .font(.caption)
                .foregroundColor(Color(.placeholderText))
                .opacity(password.isEmpty ? 0.0: 1.0)
                .offset(y: password.isEmpty ? 20.0: 0.0)
                .padding(.leading, 8.0)
                .padding(.bottom, -8.0)
            HStack {
                if self.isSecured {
                    SecureField("Password", text: $password)
                        .padding(.leading, 8.0)
                } else {
                    TextField("Password", text: $password)
                        .padding(.leading, 8.0)
                }
                Button(action: {
                    self.isSecured.toggle()
                }) {
                    self.isSecured ?
                        Image(systemName: "eye.slash.fill") :
                        Image(systemName: "eye.fill")
                }
                .foregroundColor(.gray)
                .frame(width: 30.0, height: 30.0)
            }
            Divider()
                .frame(height: 1)
                .background(Color.gray)
        }
        .padding(.horizontal, 20.0)
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
