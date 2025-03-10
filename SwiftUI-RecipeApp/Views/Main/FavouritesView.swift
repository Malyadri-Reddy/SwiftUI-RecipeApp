//
//  FavouritesView.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        
        NavigationView {
            Text("Favourites")
                .padding()
                .navigationTitle("Favourites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavouritesView()
}
