//
//  problem04.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/8/25.
//

import Foundation

/// 필수 문제 4 + 도전 문제 3
protocol Introducible {
    var name: String { get }
    
    func introduce() -> String
}

// MARK: 도전 문제 3 확장
extension Introducible {
    func introduce() -> String {
        return "안녕하세요, 저는 \(name) 입니다."
    }
}

class Robot: Introducible {
    var name: String {
        didSet {
            if oldValue != name {
                print("""
                name 변경 알림
                변경 이전 값: \(oldValue)
                변경 이후 값: \(name)
                """)
            }
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func introduce() -> String {
        return "안 녕 하 세 요 , 저 는 [\(name)] 입 니 다 🤖"
    }
    
    func batteryCharge() {
        print("\(name)의 배터리를 충전중...")
    }
}

class Cat: Introducible {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduce() -> String {
        return "나는 \(name)이다 야옹."
    }
    
    func makeScar() {
        print("당신은 \(name)에게 할퀴어져 상처를 입었다!")
    }
}

class Dog: Introducible {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
//    func introduce() -> String {
//        return "안녕, 저는 \(name)입니다. 멍멍."
//    }
    
    func furMaker() {
        print("\(name)가 털을 뿜어댄다!")
    }
}

func problem04() {
    let robot: Robot = Robot(name: "피규어")
    print(robot.introduce())
    robot.name = "옵티머스"
    robot.name = "옵티머스" // 이름 변경이 되지 않았을 때 예외처리 테스트용
    print(robot.introduce())
    robot.batteryCharge()
    
    let cat: Cat = Cat(name: "봄이")
    print(cat.introduce())
    cat.makeScar()
    
    let dog: Dog = Dog(name: "메시")
    print(dog.introduce())
    dog.furMaker()
    
    var introducible: [Introducible] = []
    introducible.append(robot)
    introducible.append(cat)
    introducible.append(dog)
    
    for item in introducible {
        if item is Robot {
            robot.batteryCharge()
        } else if item is Cat {
            cat.makeScar()
        } else if item is Dog {
            dog.furMaker()
        }
    }
}
