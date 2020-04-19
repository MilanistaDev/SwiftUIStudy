//
//  TozaiLineStaListUpperView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/19.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct TozaiLineStaListUpperView: View {

    @State private var lineImageRectLoc = CGPoint(x: 20.0, y: 20.0)

    var body: some View {
        ZStack {
            Image("07Series")
                .resizable()
                .scaledToFill()
            Image("ic_TozaiLine")
                .resizable()
                .scaledToFit()
                .frame(width: 30.0, height: 30.0)
                .position(self.lineImageRectLoc)
                .gesture(DragGesture().onChanged({ (value) in
                    self.lineImageRectLoc = value.location
                }).onEnded({ (_) in
                    self.lineImageRectLoc = CGPoint(x: 20.0, y: 20.0)
                }))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 2)
    }
}

struct TozaiLineStaListUpperView_Previews: PreviewProvider {
    static var previews: some View {
        TozaiLineStaListUpperView()
    }
}
