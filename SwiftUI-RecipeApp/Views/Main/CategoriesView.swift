//
//  CategoriesView.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct CategoriesView: View {
    
    @EnvironmentObject var recipeVm : RecipesViewModel
    var body: some View {
        
        NavigationView {
            List {
                
                ForEach(RecipeCategory.allCases, id: \.self){ category in
                    
                    NavigationLink {
                        ScrollView(){
                            RecipeList(recipes: recipeVm.recipes.filter{
                                $0.category == category.rawValue})
                        }
                        .navigationTitle(category.rawValue + "s")
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
                .navigationTitle("Categories")
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView().environmentObject(RecipesViewModel())
}
