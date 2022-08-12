//
//  BarChartsApp.swift
//  BarCharts
//
//  Created by Pablo Borsone on 08/08/22.
//

import SwiftUI

@main
struct BarChartsApp: App {
    let months: [MonthlyIncome] = [.init(month: .january, amount: 100.2),
                                   .init(month: .february, amount: 5.9),
                                   .init(month: .march, amount: 50),
                                   .init(month: .april, amount: 201.73),
                                   .init(month: .may, amount: 350.06),
                                   .init(month: .june, amount: 500)]

    var body: some Scene {
        WindowGroup {
            ContentView(months: months)
        }
    }
}
