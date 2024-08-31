//
//  ConfirmationDialogTutorial.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ConfirmationDialogTutorial: View {
    @State private var showDialog = false
    @State private var color = Color.black
    
    var body: some View {
        VStack {
            Spacer()
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Spacer()
            Button {
                showDialog = true
            } label: {
                Text("Select Color")
            }
            .confirmationDialog(
                "컬러선택",
                isPresented: $showDialog,
                presenting: ColorData.allCases
            ) {colorData in
                ForEach(colorData) { item in
                    Button(item.rawValue, role: .destructive) {
                        color = item.color
                    }
                }
                Button("Cancel", role: .cancel) {
                    showDialog = false
                }
            }
        }
    }
}

#Preview {
    ConfirmationDialogTutorial()
}
