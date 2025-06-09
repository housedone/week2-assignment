//
//  problem05.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/9/25.
//

import Foundation

/// 필수 문제 5
// 1. 배송 상태 열거형 정의
enum DeliveryStatus {
    case notStarted
    case inTransit(daysRemaining: Int)
    case error(reason: String)
}

// 2. 사용자 정의 에러 타입 정의
enum DeliveryError: Error {
    case invalidAddress
    case notStarted
    case systemError(reason: String)
}

// 3. 배송 예측 함수 정의
func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
    guard !address.trimmingCharacters(in: .whitespaces).isEmpty else {
        throw DeliveryError.invalidAddress
    }

    switch status {
    case .notStarted:
        throw DeliveryError.notStarted
    case .inTransit(let daysRemaining):
        return "배송까지 \(daysRemaining)일 남았습니다."
    case .error(let reason):
        throw DeliveryError.systemError(reason: reason)
    }
}

// 4. 테스트 및 예외 처리 함수
func problem05() {
    let testCases: [(String, DeliveryStatus)] = [
        ("", .inTransit(daysRemaining: 2)),
        ("서울시 중구", .notStarted),
        ("부산시 해운대구", .error(reason: "서버 응답 없음")),
        ("대전시 유성구", .inTransit(daysRemaining: 5))
    ]
    
    for (address, status) in testCases {
        do {
            let result = try predictDeliveryDay(for: address, status: status)
            print("[📦] \(result)")
        } catch let error as DeliveryError {
            switch error {
            case .invalidAddress:
                print("[⚠️] 주소가 유효하지 않습니다.")
            case .notStarted:
                print("[⚠️] 배송이 아직 시작되지 않았습니다.")
            case .systemError(let reason):
                print("[⚠️] 시스템 오류 발생: \(reason)")
            }
        } catch {
            print("[⚠️] 예기치 못한 오류 발생: \(error.localizedDescription)")
        }
    }
}
