//
//  MetroStationInfo.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/01/07.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import Foundation

final class MetroStationInfo {

    func fetchMetroStationInfoData(completion: @escaping ([[MetroStationModel]]) -> Void) {

        guard let path = Bundle.main.path(forResource: "MetroLineData", ofType: "json") else {
            return
        }

        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let metroLineData = try JSONDecoder().decode([[MetroStationModel]].self, from: data)
            DispatchQueue.main.async {
                completion(metroLineData)
            }
        } catch {
            print("json convert failed in JSONDecoder. ")
        }
    }
}
