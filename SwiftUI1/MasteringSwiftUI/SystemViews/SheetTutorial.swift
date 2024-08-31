//
//  SheetTutorial.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct Dummy: Identifiable {
    var id: String
}

struct SheetTutorial: View {
    @State private var isPresented = false
    @State private var isPresentedFullScreen = false
    @State private var dummy: Dummy?
    
    var body: some View {
        VStack {
            Button {
                isPresented = true
            } label: {
                Text("sheet")
            }
            .padding()
            .sheet(isPresented: $isPresented) {
                Button("닫기") {
                    isPresented = false
                }
            }
            
            Button {
                isPresentedFullScreen = true
            } label: {
                Text("fullScreen")
            }
            .padding()
            .fullScreenCover(isPresented: $isPresentedFullScreen) {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button("닫기") {
                            isPresentedFullScreen = false
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .background(.red)
            }
            
            Button("item sheet") {
                dummy = Dummy(id: "읭")
            }
            .sheet(item: $dummy) {_ in
                Button("비우기") {
                    dummy = nil
                }
                
            }
        }
    }
}

#Preview {
    SheetTutorial()
}
