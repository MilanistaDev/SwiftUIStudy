//
//  TopListView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2019/12/27.
//  Copyright © 2019 Takuya Aso. All rights reserved.
//

import SwiftUI

struct TopListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TozaiLineStaListView()) {
                    // TODO: Make rowView for List.
                    Text("東京メトロ 東西線駅リスト")
                }
                NavigationLink(destination: UseXibInsteadOfView()) {
                    Text("東京メトロ東西線駅リスト2")
                }
                NavigationLink(destination: SecureTextField()) {
                    Text("ログインフォームサンプル")
                }
            }.navigationBarTitle(Text("SwiftUIStudy Contents"), displayMode: .large)
        }
    }
}

struct TopListView_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}
