//
//  ImageTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ImageTutorials: View {
    var body: some View {
        VStack {
//            Image("swiftui-logo")
//                .interpolation(.low)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 200, height: 300)
//                .clipped()
//            
//            Image("swiftui-logo")
//                .resizable(resizingMode: .tile)
            
            
            Image(systemName: "tree.fill")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ImageTutorials()
}
