//
//  problem01.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/4/25.
//

import Foundation

/// 필수 문제 1
func problem01() {
    let sum: (Int, Int) -> String = { a, b in
        "두 수의 합은 \(a + b) 입니다."
    }
    
    print(sum(10, 20))
    
    func calculate(closure: (Int, Int) -> String) {
        let result = sum(10, 20)
        
        print(result)
    }
    
    calculate(closure: sum)
    print()
}
