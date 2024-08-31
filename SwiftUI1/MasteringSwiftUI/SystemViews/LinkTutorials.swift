//
//  LinkTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct LinkTutorials: View {
    let url = URL(string: "http://developer.apple.com")!
    let sms = URL(string: "sms://010-0000-0000")
    
    var body: some View {
        VStack {
            Button("Apple Developer") {
                UIApplication.shared.open(url, options: [:],
                                          completionHandler: nil
                )
            }.padding()
            
            Link("Apple Developer", destination: url)
                .padding()
            
            Link(destination: url) {
                Label("Apple Developer", systemImage: "house")
            }
            .padding()
            .background(
                .ultraThinMaterial, in:
                    RoundedRectangle(cornerRadius: 12))
            .environment(\.openURL, OpenURLAction {url in
                if url.absoluteString.contains("kxcoding.com") {
                    print("Play \(url)")
                    return .handled
                }
                else if url.absoluteString.hasPrefix("http://") {
                    var components = URLComponents(url: url,
                        resolvingAgainstBaseURL: false)!
                    components.scheme = "https"
                    return .systemAction(components.url!)
                }
                else if url.absoluteString.contains("badsite.com") {
                    return .discarded
                }
                
                return .systemAction
            })
        }
    }
}

#Preview {
    LinkTutorials()
}
