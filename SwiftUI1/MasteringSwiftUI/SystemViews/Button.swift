//
//  ButtonTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct View_Button: View {
    @State private var value = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Random Number")
                .font(.largeTitle)
            
            Text("\(value)")
                .font(.system(size: 200))
            
            Spacer()
            Button{
                value = Int.random(in: 1 ... 100)
            } label: {
                Image(systemName: "repeat")
                Text("Generate")
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
    
    private func generate() {
        value = Int.random(in: 1 ... 100)
    }
}

#Preview {
    View_Button()
}
