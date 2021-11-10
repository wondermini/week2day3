//
//  main.swift
//  week2day3-1
//
//  Created by JUNGMIN KIM on 2021/11/10.
//

import Foundation

var calc = InterestCalculator()

func testInterest(unitDay: Int) {
    for i in stride(from: 1, through: 365, by: unitDay) {
        print(calc.calculateAmount(day: i, amount: 100))
    }
}

testInterest(unitDay: 10)
