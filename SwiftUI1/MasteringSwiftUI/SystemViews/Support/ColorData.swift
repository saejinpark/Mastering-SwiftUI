//
//  ColorData.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

enum ColorData: String, Identifiable, CaseIterable {
    case Red
    case Blue
    
    var id: String {
        self.rawValue
    }
    
    var color: Color {
        switch(self) {
        case .Red:
            return .red
        case .Blue:
            return .blue
        }
    }
}

