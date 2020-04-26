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
        VStack(alignment: .leading) {
            Text("WWDC19 Dishes")
                .font(.title)
                .padding(.leading, 30.0)
                .padding(.top, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20.0) {
                    ForEach(0..<wwdcDishes.count) { index in
                        VStack(alignment: .leading) {
                            Image("WWDC19_DISH_" + String(index))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width - self.adjustPadding * 2, height: (UIScreen.main.bounds.width - self.adjustPadding * 2) * 4 / 3, alignment: .center)
                                .border(Color.black, width: 0.5)
                                .clipped()
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(wwdcDishes[index].title)
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Button(action: {

                                    }) {
                                        Image(systemName: "link.circle")
                                    }
                                    .frame(width: 16.0, height: 16.0)
                                    .opacity(wwdcDishes[index].link.isEmpty ? 0.0 : 1.0)
                                }
                                .padding([.top, .horizontal], 8.0)
                                Text(wwdcDishes[index].description)
                                    .font(.footnote)
                                    .foregroundColor(.black)
                                    .lineLimit(3)
                                    .padding([.horizontal, .bottom], 8.0)
                            }
                            .frame(width: UIScreen.main.bounds.width - self.adjustPadding * 2)
                            .background(Color.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        }

                    }
                }
                .padding([.leading, .trailing], self.adjustPadding)
            }
            .navigationBarTitle("Horizontal Item Viewer", displayMode: .inline)
            Spacer()
        }
    }
}

struct HorizontalItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemViewer()
    }
}
