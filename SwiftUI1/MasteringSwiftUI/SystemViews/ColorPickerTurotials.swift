//
//  ColorPickerTurotials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ColorPickerTurotials: View {
    @State private var backgroundColor = Color(.sRGB, red: 1, green: 1, blue: 1)
    
    var body: some View {
        VStack {
            ColorPicker("컬러 선택", selection: $backgroundColor, supportsOpacity: false)
                .labelsHidden()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

#Preview {
    ColorPickerTurotials()
}
