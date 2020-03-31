//
//  TozaiLineStaListView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2019/12/27.
//  Copyright © 2019 Takuya Aso. All rights reserved.
//

import SwiftUI

struct TozaiLineStaListView: View {
    @State private var lineImageRectLoc = CGPoint(x: 20.0, y: 20.0)

    var body: some View {
        VStack(alignment: .leading, content: {
            ZStack {
                GeometryReader { geometry in
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
            }
            Image("ic_TozaiLine")
                .resizable()
                .scaledToFit()
                .frame(minWidth: 80, idealWidth: 80, maxWidth: 80,
                       alignment: Alignment.center)
                .frame(minWidth: 20, maxWidth: .infinity)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .offset(y: -40)
                .padding(.bottom, -40)
            Text("東京メトロ東西線 駅リスト")
                .font(.headline)
                .padding(.leading, 16.0)
            List {
                Text("dsds")
            }
        })
        .navigationBarTitle(Text("東京メトロ東西線"), displayMode: .inline)
    }
}

struct TozaiLineStaListView_Previews: PreviewProvider {
    static var previews: some View {
        TozaiLineStaListView()
    }
}
