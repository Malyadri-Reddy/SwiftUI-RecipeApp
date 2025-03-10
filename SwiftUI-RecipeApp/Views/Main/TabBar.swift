//
//  TabBar.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
            }
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
            }
            
            NewRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
            }
            
            FavouritesView()
                .tabItem{
                    Label("Favourites", systemImage: "heart")
            }
            
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
            }
        }
    }
}

#Preview {
    TabBar().environmentObject(RecipesViewModel())
}
