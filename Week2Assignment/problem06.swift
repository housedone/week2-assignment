//
//  problem06.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/9/25.
//

import Foundation

// MARK: 엔진 프로토콜 & 타입

protocol Engine {
    var description: String { get }
    func start()
}

class GasolineEngine: Engine {
    var description: String { "가솔린 엔진" }
    func start() { print("가솔린 엔진 시동") }
}

class ElectricEngine: Engine {
    var description: String { "전기 엔진" }
    func start() { print("전기모터 시작") }
}

class HydrogenEngine: Engine {
    var description: String { "수소 엔진" }
    func start() { print("수소 엔진 시작") }
}

// MARK: Base Class

class Car {
    var brand: String
    var model: String
    var year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        engine.start()
        print("\(brand) \(model) 주행 중...")
    }
    
    func stop() {
        print("Car 멈춤")
    }
    
    func charge() {
        print("Car 충전 중...")
    }
    
    func refuel() {
        print("Car 주유 중...")
    }
}

class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: ElectricEngine())
    }
}

class HybridCar: Car {
    func switchEngine(to newEngine: Engine) {
        self.engine = newEngine
        print("엔진을 \(newEngine.description)으로 전환했습니다.")
    }
}

// MARK: 테스트

func problem06() {
    let hybridCar = HybridCar(brand: "현대", model: "그랜저", year: "2026", engine: ElectricEngine())
    hybridCar.drive()
    hybridCar.switchEngine(to: GasolineEngine())
    hybridCar.drive()
}

