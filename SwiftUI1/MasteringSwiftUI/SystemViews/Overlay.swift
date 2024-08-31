//
//  Overlay.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        EmojiView(emoji: "😀")
            .frame(width: 200, height: 200)
            .overlay(
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 44, height: 44)
                            .foregroundColor(.blue)
                    }
                    .padding(18)
                }
            )
    }
}

#Preview {
    Overlay()
}
