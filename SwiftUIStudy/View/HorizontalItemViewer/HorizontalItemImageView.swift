//
//  HorizontalItemImageView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/05/02.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemImageView: View {

    var index: Int
    private let adjustPadding: CGFloat = 30.0

    var body: some View {
        Image("WWDC19_DISH_" + String(index))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width - self.adjustPadding * 2,
               height: (UIScreen.main.bounds.width - self.adjustPadding * 2) * 4 / 3, alignment: .center)
        .border(Color.black, width: 0.5)
        .clipped()
    }
}

struct HorizontalItemImageView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemImageView(index: 0)
    }
}
