//
//  Sections.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct Sections: View {
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                Section {
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😀")
                } header: {
                    SectionHeaderView(title: "first")

                }
                
                Section {
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😀")
                } header: {
                    SectionHeaderView(title: "second")

                }
            
                Section {
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😀")
                } header: {
                    SectionHeaderView(title: "third")

                }
                
            }
        }
    }
}

#Preview {
    Sections()
}
