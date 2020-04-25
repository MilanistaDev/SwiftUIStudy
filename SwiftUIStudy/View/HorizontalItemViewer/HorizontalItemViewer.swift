//
//  HorizontalItemViewer.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/25.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemViewer: View {

    private let adjustPadding: CGFloat = 30.0

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 20.0) {
                    ForEach(0..<17) { index in
                        Image("WWDC19_DISH_" + String(index))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width - self.adjustPadding * 2, height: (geometry.size.width - self.adjustPadding * 2) * 4 / 3, alignment: .center)
                            .border(Color.black, width: 0.5)
                            .clipped()
                    }
                }
                .padding([.leading, .trailing], self.adjustPadding)
            }
        }
        .navigationBarTitle("Horizontal Item Viewer", displayMode: .inline)
    }
}

struct HorizontalItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemViewer()
    }
}
