//
//  MenuTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct MenuTutorials: View {
    var body: some View {
        Menu("File Menu") {
            Button("Copy", action: {})
            
            Button(action: {
                
            }) {
                Label("Change Folder Name", systemImage: "pencil")
            }
            
            Button(role: .destructive) {
            
            } label: {
                Label("Delete", systemImage: "trash")
            }
            
            Menu {
                Button {
                    
                } label: {
                    Label("Email", systemImage: "envelope")
                }
                
                Button {
                    
                } label: {
                    Label("Air Play", systemImage: "airplayvideo")
                }
            } label: {
                Label("Share", systemImage: "link")
            }
        } primaryAction: {
            print("Do Something...")
        }
        .padding()
    }
}

#Preview {
    MenuTutorials()
}
