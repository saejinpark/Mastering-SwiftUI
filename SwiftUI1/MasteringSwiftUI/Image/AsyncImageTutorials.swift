//
//  AsyncImageTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct AsyncImageTutorials: View {
    let url = URL(string: "https://kxcodingblob.blob.core.windows.net/mastering-ios/2222.jpg")
    
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .success(let image):
                image.resizable().scaledToFit()
            case .failure(let error):
                Label("이미지를 다운로드 하지 못했습니다.", systemImage: "x.circle")
            case .empty:
                ProgressView()
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    AsyncImageTutorials()
}
