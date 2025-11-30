//
//  FactModel.swift
//  Avocados
//
//  Created by Labhesh Dudi on 30/11/25.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
