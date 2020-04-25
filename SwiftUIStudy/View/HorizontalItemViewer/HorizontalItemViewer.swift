//
//  HorizontalItemViewer.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/25.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemViewer: View {

    var imageNames: [String] = ["T01", "T02", "T03", "T04"]

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 20.0) {
                    ForEach(self.imageNames, id: \.self) { imageName in
                        Image(imageName)
                            .scaledToFill()
                            .frame(width: 300.0, height: 400.0)
                        .border(Color.black, width: 0.5)
                    }
                }
                .padding([.leading, .trailing], (geometry.size.width - 300) / 2)
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
