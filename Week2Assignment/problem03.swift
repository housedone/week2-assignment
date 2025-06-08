//
//  problem03.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/4/25.
//

import Foundation

func problem03() {
    func a(_ input: [Int]) -> [Int] {
        input.filter { $0 % 2 == 1 }
    }
    
    print(a([1, 2, 3, 4, 5]))

    
    func b(_ input: [String]) -> [String] {
        var result: [String] = []
        for (index, element) in input.enumerated() {
            if index % 2 == 0 { result.append(element) }
        }
        return result
    }
    
    print(b(["가", "나", "다", "라", "마"]))
    
    func c<T>(_ input: [T]) -> [T] {
        var result: [T] = []
        for (index, element) in input.enumerated() {
            if index % 2 == 0 { result.append(element) }
        }
        return result
    }

    print(c([1, 2, 3, 4, 5]))
    print(c(["가", "나", "다", "라", "마"]))
    
    func d<T: Numeric>(_ input: [T]) -> [T] {
        var result: [T] = []
        for (index, element) in input.enumerated() {
            if index % 2 == 0 { result.append(element) }
        }
        return result
    }
    
    print(d([1, 2, 3, 4, 5]))
    //print(d(["가", "나", "다", "라", "마"]))
}
