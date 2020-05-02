//
//  HorizontalItemContentsView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/05/02.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemContentsView: View {

    @Binding var isChaosMode: Bool
    private let adjustPadding: CGFloat = 30.0

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: UIScreen.main.bounds.width * 0.75) {
                ForEach(0..<wwdcDishes.count) { index in
                    GeometryReader { geometry in
                        VStack(alignment: .leading) {
                            HorizontalItemImageView(index: index)
                            HorizontalItemDescriptionView(index: index)
                                .frame(width: UIScreen.main.bounds.width - self.adjustPadding * 2)
                                .background(Color.yellow)
                                .clipShape(RoundedRectangle(cornerRadius: 5.0))
                        }
                        .rotation3DEffect(
                            Angle(degrees: Double(geometry.frame(in: .global).minX - UIScreen.main.bounds.width / 2 + 5.0) / Double(self.isChaosMode ? 1.0:  -10.0)),
                            axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                }
            }
            .padding(.horizontal, UIScreen.main.bounds.width / 2 - 5.0)
        }
    }
}

struct HorizontalItemContentsView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemContentsView(isChaosMode: .constant(false))
    }
}
