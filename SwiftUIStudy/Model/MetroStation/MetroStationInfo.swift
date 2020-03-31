//
//  MetroStationInfo.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/01/07.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import Foundation

enum MetroLineType: Int {
    case all = 0
    case ginza
    case marunouchi
    case hibiya
    case tozai
    case chiyoda
    case yurakucho
    case hanzomon
    case namboku
    case fukutoshin
}

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
            print("json convert failed in JSONDecoder.")
        }
    }
}
