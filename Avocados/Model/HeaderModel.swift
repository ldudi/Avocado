//
//  HeaderModel.swift
//  Avocados
//
//  Created by Labhesh Dudi on 29/10/25.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
