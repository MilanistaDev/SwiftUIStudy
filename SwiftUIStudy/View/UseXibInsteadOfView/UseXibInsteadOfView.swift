//
//  UseXibInsteadOfView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/24.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct UseXibInsteadOfView: View {

    @ObservedObject var viewModel: TozaiLineStaListViewModel = TozaiLineStaListViewModel()

    var body: some View {
        List {
            ForEach(self.viewModel.tozaiLineStationList, id: \.self) { line in
                StationCellView(stationModel: line)
                    .frame(height: 124.0)
            }
            .listRowInsets(EdgeInsets())
        }
        .navigationBarTitle(Text("東京メトロ東西線"), displayMode: .inline)
    }
}

struct StationCellView: UIViewRepresentable {

    var stationModel: MetroStationModel

    func makeUIView(context: Context) -> some UIView {
        StationTableViewCell.build(model: stationModel)
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct UseXibInsteadOfView_Previews: PreviewProvider {
    static var previews: some View {
        UseXibInsteadOfView()
    }
}
