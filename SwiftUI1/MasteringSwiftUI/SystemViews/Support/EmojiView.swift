//
//  EmojiView.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct EmojiView: View {
    let emoji: String
    
    init(emoji: String) {
        self.emoji = emoji
        print("EmojiView \(emoji) initialized")
    }
    
    var body: some View {
        Text(emoji)
            .font(.system(size: 80))
            .frame(width: 150, height: 150)
            .background(Color.gray)
            .clipShape(Circle())
    }
}

#Preview {
    EmojiView(emoji: "😀")
}
