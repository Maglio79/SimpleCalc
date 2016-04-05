//
//  main.swift
//  SimpleCalc
//
//  Created by Chris Maglio on 4/4/16.
//  Copyright © 2016 Chris Maglio. All rights reserved.
//  INFO 498D Ted Neward 4/4/16

import Foundation

//Entry
print("$ calc")
print("Enter your Calculation")
let x = Int.init(readLine()!)!
let op = readLine()!
if op == "fact" && x > 0 {
    var factorial = 1
    for index in 1...x {
        factorial = factorial * index
    }
    print("Result: \(factorial)")
} else if op == "fact" && x == 0 {
    print("Result: \(1)")
// Factorials come first because they only require one number
// Here is the case where it goes number operator number
} else {
    let y = Int.init(readLine()!)!
    if op == "-" {
        print("Result: \(x - y)")
    } else if op == "+" {
        print("Result: \(x + y)")
    } else if op == "*" {
        print("Result: \(x * y)")
    } else if op == "/" {
        print("Result: \(x / y)")
    } else if op == "%" {
        print("Result: \(x % y)")
    // Here is where we deal with count and avg/average
    } else {
        var array = [Int]()
        array.append(x)
        array.append(Int.init(op)!)
        array.append(y)
        var rflag = 0
        var count = 3
        while rflag == 0 {
            let resp = readLine()!
            if resp == "count" {
                print("Result; \(count)")
                rflag = 1
            } else if resp == "avg" || resp == "average" {
                var total = 0
                for index in 0...(count - 1) {
                    total += array[index]
                }
                total = total / count
                print("Result: \(total)")
                rflag = 1
            } else {
                array.append(Int.init(resp)!)
                count += 1
            }
        }
    }
}


