//
//  HomeView.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipevm : RecipesViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipevm.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView().environmentObject(RecipesViewModel())
}
