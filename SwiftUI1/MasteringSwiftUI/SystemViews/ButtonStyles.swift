//
//  ButtonStyle.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ButtonStyles: View {
    var body: some View {
        VStack {
            Button("Automatic", action: {})
                .padding()
                .buttonStyle(.automatic)
            Button("Plain", action: {})
                .padding()
                .buttonStyle(.plain)
            Button("Bordered", action: {})
                .padding()
                .buttonStyle(.bordered)
            Button("Bordered Prominent", action: {})
                .padding()
                .buttonStyle(.borderedProminent)
            Button("Borderless", action: {})
                .padding()
                .buttonStyle(.borderless)
            
            #if os(maxOS)
            Button("Borderless", action: {})
                .padding()
                .buttonStyle(.automatic)
            #endif
            
            #if os(tvOS)
            Button("Card", action: {})
                .padding()
                .buttonStyle(.card)
            #endif
        }.tint(.yellow)
    }
}

#Preview {
    ButtonStyles()
}
