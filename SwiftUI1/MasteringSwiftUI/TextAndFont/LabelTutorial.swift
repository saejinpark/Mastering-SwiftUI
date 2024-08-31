//
//  Label.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct LabelTutorial: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Image(systemName: "person")
                Text("User Profile")
            }
            .font(.largeTitle)
            
            Label("User Profile", systemImage: "person")
            
            HStack {
                Image("kxcoding-logo")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width: 60)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(.blue)
                    }
                Text("KxCoding")
                    .font(.largeTitle)
            }
            
            Label {
                Text("KxCoding")
                    .font(.largeTitle)
            } icon: {
                Image("kxcoding-logo")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width: 60)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(.blue)
                    }
            }
        }
    }
}

#Preview {
    LabelTutorial()
}
