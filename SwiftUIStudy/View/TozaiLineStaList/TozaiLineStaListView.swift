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
            Text("駅リスト")
            List {
                Text("dsds")
            }
        })
        .navigationBarTitle(Text("東京メトロ 東西線"), displayMode: .inline)
    }
}

struct TozaiLineStaListView_Previews: PreviewProvider {
    static var previews: some View {
        TozaiLineStaListView()
    }
}
