//
//  AddRecipeView.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct AddRecipeView: View {
    
    @EnvironmentObject var recipeVm : RecipesViewModel
    @State private var name: String = ""
    @State private var selectedCategory: RecipeCategory = RecipeCategory.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var direction: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section(header: Text("Name"))
                {
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category"))
                {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(RecipeCategory.allCases){ category in
                            
                            Text(category.rawValue)
                                .tag(category)
                            
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description"))
                {
                    TextEditor(text: $description)
                    
                }
                Section(header: Text("Ingedients"))
                {
                    TextEditor(text: $ingredients)
                    
                }
                Section(header: Text("Directions"))
                {
                    TextEditor(text: $direction)
                    
                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                        
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    NavigationLink(isActive: $navigateToRecipe, destination: {
                        RecipeView(recipe: recipeVm.recipes.sorted{
                            $0.datePublished > $1.datePublished
                        }[0])
                        .navigationBarBackButtonHidden(true)
                    }, label: {
                        Button {
                            saveeRecipe()
                            navigateToRecipe.toggle()
                            
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        
                    })
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView().environmentObject(RecipesViewModel())
}

extension AddRecipeView {
    
    private func saveeRecipe() {
        let now = Date()
        let dateFormatter  = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        
        let recipe = RecipeModel(name: name, image: "", description: description, ingredients: ingredients, directions: direction, datePublished: datePublished, url: "", category: selectedCategory.rawValue)
        recipeVm.AddRecipe(recipe: recipe)
    }
}
