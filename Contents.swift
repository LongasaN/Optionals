//: Playground - noun: a place where people can play

import UIKit

func tipPercentageForRating (rating: Int) -> Double {
    
    var tipPercentage: Double
    
    if rating == 5 {
        tipPercentage = 0.25
    } else if rating >= 3 {
        tipPercentage = 0.15
    } else {
        tipPercentage = 0.10
    }
    
    return tipPercentage
}

// Function to show tip advice
func showTipAdvice (restaurantTotal: Double, rating: Int?, restaurantName: String?) {

    
    // Optional binding
    if let restaurantName = restaurantName {
        print("You went out to eat at \(restaurantName)")
    }
    
    if let rating = rating {
        let tip = tipPercentageForRating(rating)
        
        print("On a bill of $\(restaurantTotal), you should leave a tip of $\(tip)")
        print("That means you pay $\(restaurantTotal + tip)")
    }
    
}

let restaurantTotal = 95.00
var restaurantName: String? = "Burger King"
var rating: Int? = 4

showTipAdvice(restaurantTotal, rating: rating, restaurantName: restaurantName)

