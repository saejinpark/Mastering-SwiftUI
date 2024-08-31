//
//  PopoverTutorials.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct PopoverTutorials: View {
    @State private var showPopover = false
    
    var body: some View {
        Button {
            showPopover = true
        } label: {
            Text("Show Popover")
        }
        .padding()
        .popover(isPresented: $showPopover, attachmentAnchor: .rect(Anchor<CGRect>.Source.bounds)) {
            View_Form()
                .frame(minWidth: 320, minHeight: 400)
        }
    }
}

#Preview {
    PopoverTutorials()
}
