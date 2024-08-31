//
//  ScrollViewTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ScrollViewTutorials: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😀")
                
                
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😀")
                
                
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😀")
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ScrollViewTutorials()
}
