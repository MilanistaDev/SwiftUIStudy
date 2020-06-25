//
//  Contents.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/06/25.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import Foundation

struct Contents: Identifiable {
    var id: Int
    var title: String
    var view: ContentsViewEnum
}

enum ContentsViewEnum {
    case tozaiLineStaList
    case useXibInsteadOfView
    case secureTextField
    case horizontalItemViewer
}

let contentsList: [Contents] = [
    Contents(id: 0, title: "東京メトロ 東西線駅リスト", view: .tozaiLineStaList),
    Contents(id: 1, title: "東京メトロ 東西線駅リスト2", view: .useXibInsteadOfView),
    Contents(id: 2, title: "ログインフォームサンプル", view: .secureTextField),
    Contents(id: 3, title: "横スクロールするアイテムビューア", view: .horizontalItemViewer),
]
