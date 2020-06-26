//
//  HorizontalStackSampleView.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/06/25.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import SwiftUI

/// in case VStack
/// .horizontal => .vetical
/// LazyHStack => LazyVStack
/// scrollView.scrollTo(1, anchor: .leading) => scrollView.scrollTo(1, anchor: .top)

@available(iOS 14.0, *)
struct HorizontalStackSampleView: View {
    var body: some View {
        ScrollView(.horizontal) {
            ScrollViewReader { scrollView in
                LazyHStack(spacing: 10.0) {
                    ForEach(1...10, id: \.self) { count in
                        Text("\(count)")
                            .frame(width: 100.0, height: 100.0)
                            .border(Color.gray.opacity(0.5), width: 0.5)
                            .background(Color.red)
                            .cornerRadius(5.0)
                    }
                    Text("Scroll To Top")
                        .frame(width: 100.0, height: 100.0)
                        .background(Color.green)
                        .cornerRadius(5.0)
                        .onTapGesture {
                            scrollView.scrollTo(1, anchor: .leading)
                        }
                }
                .padding(.leading, 20.0)
            }
        }
    }
}

@available(iOS 14.0, *)
struct HorizontalStackSampleView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalStackSampleView()
    }
}
