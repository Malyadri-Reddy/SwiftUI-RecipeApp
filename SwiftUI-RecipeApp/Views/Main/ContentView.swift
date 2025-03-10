//
//  ContentView.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

#Preview {
    ContentView().environmentObject(RecipesViewModel())
}
