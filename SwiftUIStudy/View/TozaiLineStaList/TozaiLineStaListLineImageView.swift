//
//  TozaiLineStaListLineImageView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/19.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct TozaiLineStaListLineImageView: View {
    var body: some View {
        Image("ic_TozaiLine")
            .resizable()
            .scaledToFit()
            .frame(width: 80.0, height: 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
            .offset(x: UIScreen.main.bounds.width / 2 - 40, y: -40)
            .padding(.bottom, -40)
    }
}

struct TozaiLineStaListLineImageView_Previews: PreviewProvider {
    static var previews: some View {
        TozaiLineStaListLineImageView()
    }
}
