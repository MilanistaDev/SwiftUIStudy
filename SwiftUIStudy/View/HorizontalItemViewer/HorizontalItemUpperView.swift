//
//  HorizontalItemUpperView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/05/02.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemUpperView: View {

    @Binding var isChaosMode: Bool

    var body: some View {
        HStack {
            Text("WWDC19 Dishes")
                .font(.title)
            Spacer()
            Toggle("Chaos Mode", isOn: $isChaosMode)
            .labelsHidden()
        }
        .padding(.horizontal, 30.0)
        .padding(.top, 16.0)
    }
}

struct HorizontalItemUpperView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemUpperView(isChaosMode: .constant(false))
    }
}
