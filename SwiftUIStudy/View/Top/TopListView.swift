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
            List (contentsList) { content in
                self.contentsView(content: content)
            }
            .navigationBarTitle(Text("SwiftUIStudy Contents"), displayMode: .large)
            .edgesIgnoringSafeArea(.bottom)
        }
    }

    private func contentsView(content: Contents) -> AnyView {
        switch content.view {
        case .tozaiLineStaList:
            return AnyView(NavigationLink(
                destination: TozaiLineStaListView()) {
                Text(content.title)
            })
        case .useXibInsteadOfView:
            return AnyView(NavigationLink(
                destination: UseXibInsteadOfView()) {
                Text(content.title)
            })
        case .secureTextField:
            return AnyView(NavigationLink(
                destination: SecureTextField()) {
                Text(content.title)
            })
        case .horizontalItemViewer:
            return AnyView(NavigationLink(
                destination: HorizontalItemViewer()) {
                Text(content.title)
            })
        case .lazyHStackSample:
            if #available(iOS 14.0, *) {
                return AnyView(NavigationLink(
                    destination: HorizontalStackSampleView()) {
                    Text(content.title)
                })
            } else {
                return AnyView(NavigationLink(
                    destination: Text("Not supportted.")) {
                    Text(content.title)
                })
            }
        }
    }
}

struct TopListView_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}
