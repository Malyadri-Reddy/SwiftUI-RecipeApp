//
//  RecipeModel.swift
//  SwiftUI-RecipeApp
//
//  Created by Malyadri Reddy on 10/03/25.
//

import Foundation

enum RecipeCategory: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case apptizer = "Apptizer"
    case main = "Main"
    case side = "Side"
    case desert = "Desert"
    case snack = "Snack"
    case drink = "Drink"
}

struct RecipeModel: Identifiable {
    
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let datePublished: String
    let url: String
    let category: RecipeCategory.RawValue
}

extension RecipeModel {
    static var all: [RecipeModel] = [
        
        RecipeModel(name: "Creamy Carrot Soup", image: "https://www.forksoverknives.com/uploads/2025/02/Lemon-Grass-Squash-and-Greens-Soup-Wordpress.jpg", description: "A handful of humble ingredients are simply prepared in this fresh, invigorating soup inspired by the cuisines of Thailand’s mountainous northern provinces. A lemongrass- and garlic-infused broth anchor the flavors, while dried shiitake mushrooms add umami goodness, kabocha squash lends sweet notes, and spinach rounds things out. Low in calories, this is perfect as a starter soup or a light meal when you’re sick. Feel free to substitute as needed: kohlrabi or butternut squash for the kabocha squash; Swiss chard for the spinach; or Thai basil for the cilantro.", ingredients: "clove garlic, peeled and thinly sliced", directions: "In a medium pot bring garlic and ¼ cup water to a simmer. Cook over medium 5 minutes or until water evaporates and garlic softens", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-lemongrass-soup-with-mushrooms-squash-and-greens/", category: "Soup"),
        
        RecipeModel(name: "Creamy Carrot Soup", image: "https://www.forksoverknives.com/uploads/2025/02/Lemon-Grass-Squash-and-Greens-Soup-Wordpress.jpg", description: "A handful of humble ingredients are simply prepared in this fresh, invigorating soup inspired by the cuisines of Thailand’s mountainous northern provinces. A lemongrass- and garlic-infused broth anchor the flavors, while dried shiitake mushrooms add umami goodness, kabocha squash lends sweet notes, and spinach rounds things out. Low in calories, this is perfect as a starter soup or a light meal when you’re sick. Feel free to substitute as needed: kohlrabi or butternut squash for the kabocha squash; Swiss chard for the spinach; or Thai basil for the cilantro.", ingredients: "clove garlic, peeled and thinly sliced", directions: "In a medium pot bring garlic and ¼ cup water to a simmer. Cook over medium 5 minutes or until water evaporates and garlic softens", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-lemongrass-soup-with-mushrooms-squash-and-greens/", category: "Soup"),
        RecipeModel(name: "Creamy Carrot Soup", image: "https://www.forksoverknives.com/uploads/2025/02/Lemon-Grass-Squash-and-Greens-Soup-Wordpress.jpg", description: "A handful of humble ingredients are simply prepared in this fresh, invigorating soup inspired by the cuisines of Thailand’s mountainous northern provinces. A lemongrass- and garlic-infused broth anchor the flavors, while dried shiitake mushrooms add umami goodness, kabocha squash lends sweet notes, and spinach rounds things out. Low in calories, this is perfect as a starter soup or a light meal when you’re sick. Feel free to substitute as needed: kohlrabi or butternut squash for the kabocha squash; Swiss chard for the spinach; or Thai basil for the cilantro.", ingredients: "clove garlic, peeled and thinly sliced", directions: "In a medium pot bring garlic and ¼ cup water to a simmer. Cook over medium 5 minutes or until water evaporates and garlic softens", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-lemongrass-soup-with-mushrooms-squash-and-greens/", category: "Soup"),
        RecipeModel(name: "Creamy Carrot Soup", image: "https://www.forksoverknives.com/uploads/2025/02/Lemon-Grass-Squash-and-Greens-Soup-Wordpress.jpg", description: "A handful of humble ingredients are simply prepared in this fresh, invigorating soup inspired by the cuisines of Thailand’s mountainous northern provinces. A lemongrass- and garlic-infused broth anchor the flavors, while dried shiitake mushrooms add umami goodness, kabocha squash lends sweet notes, and spinach rounds things out. Low in calories, this is perfect as a starter soup or a light meal when you’re sick. Feel free to substitute as needed: kohlrabi or butternut squash for the kabocha squash; Swiss chard for the spinach; or Thai basil for the cilantro.", ingredients: "clove garlic, peeled and thinly sliced", directions: "In a medium pot bring garlic and ¼ cup water to a simmer. Cook over medium 5 minutes or until water evaporates and garlic softens", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-lemongrass-soup-with-mushrooms-squash-and-greens/", category: "Soup"),
        RecipeModel(name: "Creamy Carrot Soup", image: "https://www.forksoverknives.com/uploads/2025/02/Lemon-Grass-Squash-and-Greens-Soup-Wordpress.jpg", description: "A handful of humble ingredients are simply prepared in this fresh, invigorating soup inspired by the cuisines of Thailand’s mountainous northern provinces. A lemongrass- and garlic-infused broth anchor the flavors, while dried shiitake mushrooms add umami goodness, kabocha squash lends sweet notes, and spinach rounds things out. Low in calories, this is perfect as a starter soup or a light meal when you’re sick. Feel free to substitute as needed: kohlrabi or butternut squash for the kabocha squash; Swiss chard for the spinach; or Thai basil for the cilantro.", ingredients: "clove garlic, peeled and thinly sliced", directions: "In a medium pot bring garlic and ¼ cup water to a simmer. Cook over medium 5 minutes or until water evaporates and garlic softens", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-lemongrass-soup-with-mushrooms-squash-and-greens/", category: "Soup"),
        RecipeModel(name: "Creamy Carrot Soup", image: "https://www.forksoverknives.com/uploads/2025/02/Lemon-Grass-Squash-and-Greens-Soup-Wordpress.jpg", description: "A handful of humble ingredients are simply prepared in this fresh, invigorating soup inspired by the cuisines of Thailand’s mountainous northern provinces. A lemongrass- and garlic-infused broth anchor the flavors, while dried shiitake mushrooms add umami goodness, kabocha squash lends sweet notes, and spinach rounds things out. Low in calories, this is perfect as a starter soup or a light meal when you’re sick. Feel free to substitute as needed: kohlrabi or butternut squash for the kabocha squash; Swiss chard for the spinach; or Thai basil for the cilantro.", ingredients: "clove garlic, peeled and thinly sliced", directions: "In a medium pot bring garlic and ¼ cup water to a simmer. Cook over medium 5 minutes or until water evaporates and garlic softens", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-lemongrass-soup-with-mushrooms-squash-and-greens/", category: "Soup")
        
    ]
}
