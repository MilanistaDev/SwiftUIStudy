//
//  HorizontalItemDescriptionView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/05/02.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemDescriptionView: View {

    var index: Int
    @State private var showModal: Bool = false
    @State private var selectedNum: Int = 0

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(wwdcDishes[index].title)
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                    self.showModal.toggle()
                    self.selectedNum = self.index
                }) {
                    Image(systemName: "link.circle")
                }
                .frame(width: 16.0, height: 16.0)
                .opacity(wwdcDishes[index].link.isEmpty ? 0.0 : 1.0)
                .sheet(isPresented: self.$showModal) {
                    SafariView(url: URL(string: wwdcDishes[self.selectedNum].link))
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
            .padding([.top, .horizontal], 8.0)
            Text(wwdcDishes[index].description)
                .font(.footnote)
                .foregroundColor(.black)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
                .padding([.horizontal, .bottom], 8.0)
        }
    }
}

struct HorizontalItemDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemDescriptionView(index: 0)
    }
}
