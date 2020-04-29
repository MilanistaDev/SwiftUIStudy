//
//  HorizontalItemViewer.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/25.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemViewer: View {

    @State private var showModal: Bool = false
    @State private var selectedNum: Int = 0
    private let adjustPadding: CGFloat = 30.0

    var body: some View {
        VStack(alignment: .leading) {
            Text("WWDC19 Dishes")
                .font(.title)
                .padding(.leading, 30.0)
                .padding(.top, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: UIScreen.main.bounds.width * 0.75) {
                    ForEach(0..<wwdcDishes.count) { index in
                        GeometryReader { geometry in
                            VStack(alignment: .leading) {
                                Image("WWDC19_DISH_" + String(index))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: UIScreen.main.bounds.width - self.adjustPadding * 2,
                                           height: (UIScreen.main.bounds.width - self.adjustPadding * 2) * 4 / 3, alignment: .center)
                                    .border(Color.black, width: 0.5)
                                    .clipped()
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text(wwdcDishes[index].title)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                        Spacer()
                                        Button(action: {
                                            self.showModal.toggle()
                                            self.selectedNum = index
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
                                .frame(width: UIScreen.main.bounds.width - self.adjustPadding * 2)
                                .background(Color.yellow)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - Double(UIScreen.main.bounds.width) / 2 + 5.0) / -10),
                                              axis: (x: 0.0, y: 1.0, z: 0.0))
                        }
                    }
                }
                .padding(.horizontal, UIScreen.main.bounds.width / 2 - 5.0)
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
