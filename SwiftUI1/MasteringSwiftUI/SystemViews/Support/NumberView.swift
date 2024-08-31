//
//  NumberView.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct NumberView: View {
    let number: Int
    
    init(number: Int) {
        self.number = number
        print("NumberView \(number) initialized")
    }
    
    var body: some View {
        Text("\(number)")
            .font(.largeTitle)
            .frame(width: 150, height: 150)
            .background(Color.yellow)
            .clipShape(Circle())
    }
}

#Preview {
    NumberView(number: 1)
}
