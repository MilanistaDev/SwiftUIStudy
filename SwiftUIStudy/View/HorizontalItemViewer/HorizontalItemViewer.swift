//
//  HorizontalItemViewer.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/25.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

struct HorizontalItemViewer: View {

    @State private var isChaosMode: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HorizontalItemUpperView(isChaosMode: $isChaosMode)
            HorizontalItemContentsView(isChaosMode: $isChaosMode)
            Spacer()
        }
        .navigationBarTitle("Horizontal Item Viewer", displayMode: .inline)
    }
}

struct HorizontalItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalItemViewer()
    }
}
