//
//  SymbolImage.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct SymbolImage: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "star")
                    .font(.largeTitle)
                    .imageScale(.small)
                Text("Image")
                    .font(.largeTitle)
            }
            
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Image(systemName: "cloud.sun.rain")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.gray, .yellow, .blue)
            
        }
    }
}

#Preview {
    SymbolImage()
}
