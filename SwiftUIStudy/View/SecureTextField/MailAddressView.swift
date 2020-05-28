//
//  MailAddressView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/17.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct MailAddressView: View {

    @State private var mailAddress: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Mail address")
                .font(.caption)
                .foregroundColor(Color(.placeholderText))
                .opacity(mailAddress.isEmpty ? 0.0: 1.0)
                .offset(y: mailAddress.isEmpty ? 20.0: 0.0)
                .padding(.leading, 8.0)
                .padding(.bottom, -4.0)
            TextField("Mail address", text: $mailAddress)
                .padding(.leading, 8.0)
            Divider()
                .frame(height: 1)
                .background(Color.gray)
        }
        .padding(20.0)
    }
}

struct MailAddressView_Previews: PreviewProvider {
    static var previews: some View {
        MailAddressView()
    }
}
