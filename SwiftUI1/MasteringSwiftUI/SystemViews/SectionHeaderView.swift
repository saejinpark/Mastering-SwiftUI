//
//  SectionHeaderView.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct SectionHeaderView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .font(.title3)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.blue)
    }
}

#Preview {
    SectionHeaderView(title: "preview")
}
