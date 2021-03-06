//
//  StationRowView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/20.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct StationRowView: View {

    var metroStationModel: MetroStationModel
    @State private var lineColorHeight: CGFloat = .zero

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(.tozaiLine)
                    .frame(width: 8.0, height: self.lineColorHeight)
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("東京メトロ東西線")
                        .font(.subheadline)
                    HStack(spacing: 8.0) {
                        Image(self.metroStationModel.stationImageName)
                            .scaledToFit()
                        Text(self.metroStationModel.stationName)
                            .font(.headline)
                        Spacer()
                    }
                }
                .alignmentGuide(.top, computeValue: { d in
                    DispatchQueue.main.async {
                        self.lineColorHeight = max(d.height, self.lineColorHeight)
                    }
                        return d[.top]
                })
            }
            Text(self.metroStationModel.postalCode)
                .font(.footnote)
            Text(self.metroStationModel.address)
                .font(.caption)
                .padding(.bottom, 8.0)
            Text(self.metroStationModel.transfer)
                .font(.caption)
                .bold()
        }
        .padding(.vertical, 4.0)
    }
}

struct StationRowView_Previews: PreviewProvider {
    static var previews: some View {
        StationRowView(metroStationModel: TozaiLineStaListViewModel().tozaiLineStationList[0])
    }
}
