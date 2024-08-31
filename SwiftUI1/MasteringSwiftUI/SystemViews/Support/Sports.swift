//
//  Sports.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/31/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

enum Sports: String, CaseIterable, Identifiable {
    case soccer = "⚽️"
    case basketball = "🏀"
    case baseBall = "⚾️"
    
    var id: Self { self }
}


