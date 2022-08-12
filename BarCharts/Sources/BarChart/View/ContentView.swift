//
//  ContentView.swift
//  BarCharts
//
//  Created by Pablo Borsone on 08/08/22.
//

import Charts
import SwiftUI

struct ContentView: View {
    let months: [MonthlyIncome]

    init(months: [MonthlyIncome]) {
        self.months = months
    }

    @available(iOS 16.0, *)
    var body: some View {
        Chart(months) { monthlyIncome in
            BarMark(x: .value("Month", monthlyIncome.month.rawValue),
                    y: .value("Total Income", monthlyIncome.amount))
            .foregroundStyle(Color.indigo)
            .annotation {
                Text(monthlyIncome.currencyAmount!)
                    .fontWeight(.light)
            }
            .cornerRadius(20)
            .opacity(0.8)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(months: [.init(month: .january, amount: 100.2),
                             .init(month: .february, amount: 5.9),
                             .init(month: .march, amount: 50),
                             .init(month: .april, amount: 201.73),
                             .init(month: .may, amount: 350.06),
                             .init(month: .june, amount: 500)])
    }
}
