//
//  Mastering SwiftUI
//  Copyright (c) KxCoding <help@kxcoding.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import SwiftUI

struct View_Toggle: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .resizable()
                .foregroundColor(isOn ? .yellow : .gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            // #1
            Toggle("Toggle", isOn: $isOn)
                .padding()
            
            Toggle(isOn: $isOn) {
                Label("On/Off", systemImage: "bolt")
            }
            
            VStack {
                Toggle(isOn: $isOn) {
                    EmptyView()
                }.padding()
                .labelsHidden()
                Label("On/Off", systemImage: "bolt")
                    .padding()
            }
        }
    }
}

struct View_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        View_Toggle()
    }
}
