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
        TextField("Mail address", text: $mailAddress)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(20.0)
    }
}

struct MailAddressView_Previews: PreviewProvider {
    static var previews: some View {
        MailAddressView()
    }
}
