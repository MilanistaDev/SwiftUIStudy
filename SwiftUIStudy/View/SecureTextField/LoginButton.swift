//
//  LoginButton.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/17.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

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
struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
