//
//  problem02.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/4/25.
//

import Foundation

/// 필수 문제 2
func problem02() {
    let numbers = [1, 2, 3, 4, 5]
    
    var result = numbers.map { String($0) }
    
    print(result)
    print(type(of: result))
    
    
    let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    var result2 = numbers2
        .filter { $0 % 2 == 0 }
        .map { String($0) }
    
    print(type(of: result2))
    
    print(result2)
}
