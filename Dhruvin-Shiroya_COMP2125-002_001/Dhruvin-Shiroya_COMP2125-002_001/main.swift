//
//  main.swift
//  Dhruvin-Shiroya_COMP2125-002_001
//
//  Created by dhruvin on 2023-05-30.
//

import Foundation

// function  takes int array and return the its value in tuple format
func  SumAvgArray(values: [Int] ) -> ( Int, Double){
    var sum = 0
    
    for i in values {
        sum += i
    }
    
    return (sum, Double(sum))
}


let arr = [1,2,3,4,5,6,7,8,9,10]

print("the sum of arr: \(arr) is as (Int,Double) \(SumAvgArray(values: arr))")
