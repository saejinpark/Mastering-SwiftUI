//
//  ColorTutorial.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ColorTutorial: View {
    var body: some View {
        VStack {
            Text("Color")
                .font(.largeTitle)
                .foregroundColor(.red)
            Color.blue
            Color.yellow
        
            Color(.sRGB, red: 70.0/255.0, green: 53.0/255.0, blue: 99.0/255.0, opacity: 1.0)
            
            
        }
        .background(Color(.systemBackground))
    }
}

#Preview {
    ColorTutorial()
}
