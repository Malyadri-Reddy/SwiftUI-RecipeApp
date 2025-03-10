//
//  NewRecipeView.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe  = false
    var body: some View {
        
        NavigationView {
            Button("Add recipe manually"){
                showAddRecipe.toggle()
            }
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
    }
}

#Preview {
    NewRecipeView()
}
