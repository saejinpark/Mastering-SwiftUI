//
//  LayzStacks.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct LazyStacks: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(1..<101) { num in
                    NumberView(number: num)
                }
            }
        }
    }
}

#Preview {
    LazyStacks()
}
