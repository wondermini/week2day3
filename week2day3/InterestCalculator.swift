//
//  InterestCalculator.swift
//  week2day3-1
//
//  Created by JUNGMIN KIM on 2021/11/10.
//

import Foundation

struct InterestCalculator {
    func getInterestRate(byDay: Int) -> Double {
        var rate = 0.0
        switch byDay {
        case 1 ..< 90: rate = 0.5
        case 91...180: rate = 1.0
        case 181...364: rate = 2.0
        default: rate = 5.6
        }
        return rate
    }

    func calculateAmount(day: Int, amount: Int) -> Double {
        let dailyInterest = ((Double(amount) * getInterestRate(byDay: day)/100) / 365.0)
        let totalInterest = dailyInterest * Double(day)
        return Double(amount) + totalInterest
    }
}


