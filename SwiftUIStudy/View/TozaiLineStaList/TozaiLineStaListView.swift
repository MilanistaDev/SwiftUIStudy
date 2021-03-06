//
//  TozaiLineStaListView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2019/12/27.
//  Copyright © 2019 Takuya Aso. All rights reserved.
//

import SwiftUI

struct TozaiLineStaListView: View {

    @ObservedObject var viewModel: TozaiLineStaListViewModel = TozaiLineStaListViewModel()

    var body: some View {
        VStack(alignment: .leading, content: {
            TozaiLineStaListUpperView()
            TozaiLineStaListLineImageView()
            Text("東京メトロ東西線 駅一覧")
                .font(.headline)
                .padding(.leading, 20.0)
            List {
                ForEach(self.viewModel.tozaiLineStationList, id: \.self) { line in
                    StationRowView(metroStationModel: line)
                }
            }
        })
        .navigationBarTitle(Text("東京メトロ東西線"), displayMode: .inline)
        .background(Color(red: 0.0/255.0, green: 167.0/255.0, blue: 219.0/255.0, opacity: 0.1))
    }
}

struct TozaiLineStaListView_Previews: PreviewProvider {
    static var previews: some View {
        TozaiLineStaListView()
    }
}
