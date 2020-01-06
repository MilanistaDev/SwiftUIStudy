//
//  TozaiLineStaListView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2019/12/27.
//  Copyright © 2019 Takuya Aso. All rights reserved.
//

import SwiftUI

struct TozaiLineStaListView: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Image("07Series")
                .resizable()
                .scaledToFit()
            Image("ic_TozaiLine")
                .resizable()
                .scaledToFit()
                .frame(minWidth: 150, idealWidth: 150, maxWidth: 150,
                       alignment: Alignment.center)
                .frame(minWidth: 20, maxWidth: .infinity)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .offset(y: -80)
                .padding(.bottom, -80)
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
