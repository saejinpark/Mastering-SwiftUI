//
//  ProgressView.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ProgressViewTutorials: View {
    @State private var downloading = false
    @State private var progress: CGFloat = 0.5
    
    var body: some View {
        VStack(spacing: 100) {
            Spacer()
            ProgressView(value: progress) {
                Label("Download", systemImage: "icloud.and.arrow.down")
            } currentValueLabel: {
                Text("\(progress)")
            }
            .padding()
            
            Spacer()
            Button("Download") {
                downloading = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    downloading = false
                }
            }
            .buttonStyle(.borderedProminent)
            .overlay {
                if downloading {
                    HStack {
                        ProgressView()
                            .tint(.white)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
        }
    }
}

#Preview {
    ProgressViewTutorials()
}
