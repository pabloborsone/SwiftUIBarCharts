//
//  MonthlyIncome.swift
//  BarCharts
//
//  Created by Pablo Borsone on 12/08/22.
//

import Foundation

enum Month: String {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

struct MonthlyIncome: Identifiable {
    let id = UUID()
    let month: Month
    let amount: Double
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        formatter.currencySymbol = "$"
        
        return formatter
    }()
    
    var currencyAmount: String? {
        numberFormatter.string(from: NSNumber(value: amount))
    }
}
