//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Labhesh Dudi on 03/12/25.
//

import SwiftUI

struct RecipeRatingView: View {
    
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
