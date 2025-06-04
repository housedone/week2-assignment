//
//  main.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/3/25.
//

import Foundation

while true {
    print("출력 결과를 확인할 문제의 번호를 입력해주세요. (종료: 0) : ", terminator: "")
    let inputNumber: String = readLine() ?? ""
    
    switch inputNumber {
    case "0":
        exit(0)
    case "1":
        problem01()
    case "2":
        problem02()
    default:
        print("올바른 번호를 입력해주세요.")
    }
}


// 혹시나 이름 충돌 생기면
/*
 enum Exam1 {
 protocol Intro {
 }
 }
 */












