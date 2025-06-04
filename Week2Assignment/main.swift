//
//  main.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/3/25.
//

import Foundation

/// 필수 문제 1
let sum: (Int, Int) -> String = { a, b in
    "두 수의 합은 \(a + b) 입니다."
}

print(sum(10, 20))

func calculate(closure: (Int, Int) -> String) {
    let result = sum(10, 20)
    
    print(result)
}

calculate(closure: sum)


/// 필수 문제 2

