//
//  MetroStationModel.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/01/06.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import Foundation

/// 東京メトロの駅の駅情報モデル
struct MetroStationModel: Decodable, Hashable {
    private(set) var stationImageName: String
    private(set) var stationName: String
    private(set) var lat: Double
    private(set) var lon: Double
    private(set) var address: String
    private(set) var postalCode: String
    private(set) var prefectureCode: Int
    private(set) var transfer: String

    enum CodingKeys: String, CodingKey {
        case stationImageName = "imageName"
        case stationName = "stationName"
        case lat = "latitude"
        case lon = "longitude"
        case address = "address"
        case postalCode = "postalCode"
        case prefectureCode = "prefectureCode"
        case transfer = "transfer"
    }
}
