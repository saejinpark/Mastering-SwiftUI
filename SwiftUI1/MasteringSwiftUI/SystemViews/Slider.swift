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

struct View_Slider: View {
    @State private var r = 0.0
    @State private var g = 0.0
    @State private var b = 0.0
    
    @State private var dragging = false
    
    var color: Color {
        Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    
    var body: some View {
        VStack {
            Button("Reset") {
                r = 0.0
                g = 0.0
                b = 0.0
            }
            .buttonStyle(.borderedProminent)
            .disabled(dragging)
            
            Image(systemName: "smiley.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 250, height: 250)
            
            Slider(value: $r, in: 0...255, step: 1) {
                EmptyView()
            } minimumValueLabel: {
                Text("R")
                    .foregroundColor(.red)
            } maximumValueLabel: {
                Text("\(Int(r))")
            } onEditingChanged: { editing in
                dragging = editing
            }
            .padding()
            .tint(.red)
            
            
            Slider(value: $g, in: 0...255, step: 1) {
                EmptyView()
            } minimumValueLabel: {
                Text("G")
                    .foregroundColor(.green)
            } maximumValueLabel: {
                Text("\(Int(g))")
            } onEditingChanged: { editing in
                
            }
            .padding()
            .tint(.green)
            
            
            Slider(value: $b, in: 0...255, step: 1) {
                EmptyView()
            } minimumValueLabel: {
                Text("B")
                    .foregroundColor(.blue)
            } maximumValueLabel: {
                Text("\(Int(b))")
            } onEditingChanged: { editing in
                
            }
            .padding()
            .tint(.blue)
        }
    }
}

struct View_Slider_Previews: PreviewProvider {
    static var previews: some View {
        View_Slider()
    }
}
