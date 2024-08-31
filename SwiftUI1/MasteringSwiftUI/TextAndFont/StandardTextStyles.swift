//
//  StandardTextStyles.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct StandardTextStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text("Large Title")
                    .font(.largeTitle)
                Text("Title")
                    .font(.title)
                Text("Title2")
                    .font(.title2)
                Text("Title3")
                    .font(.title3)
            }
            Group {
                Text("HeadLine")
                    .font(.headline)
                Text("SubHeadline")
                    .font(.subheadline)
                Text("body")
                    .font(.body)
                Text("callout")
                    .font(.callout)
                Text("caption")
                    .font(.caption)
                Text("caption2")
                    .font(.caption2)
                Text("footnote")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    StandardTextStyles()
}
