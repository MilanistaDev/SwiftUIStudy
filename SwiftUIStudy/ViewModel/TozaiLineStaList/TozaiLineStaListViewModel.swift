//
//  TozaiLineStaListViewModel.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/01/08.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

final class TozaiLineStaListViewModel: ObservableObject {
    let fetcherStationData = MetroStationInfo()
    @Published var tozaiLineStationList: [MetroStationModel] = []

    init() {
        self.fetcherStationData.fetchMetroStationInfoData { (data) in
            self.tozaiLineStationList = data[MetroLineType.tozai.rawValue]
        }
    }
}
