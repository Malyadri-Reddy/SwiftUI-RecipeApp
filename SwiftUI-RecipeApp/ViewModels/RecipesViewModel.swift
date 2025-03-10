//
//  RecipesViewModel.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import Foundation

class RecipesViewModel: ObservableObject {
    
    @Published private(set) var recipes: [RecipeModel] = []
    
    init() {
        recipes = RecipeModel.all
    }
    
    func AddRecipe(recipe: RecipeModel) {
        
        recipes.append(recipe)
    }
}
