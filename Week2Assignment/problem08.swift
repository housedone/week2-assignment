//
//  problem08.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/9/25.
//

import Foundation

class Person {
    let name: String
    var motorcycle: Motorcycle?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print ("\(name) is deinitialized")
    }
}

class Motorcycle {
    let modelName: String
    weak var owner: Person?
    
    var closure: (() -> Void)?
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    deinit {
        print ("\(modelName) is deinitialized")
    }
}

func problem08() {
    var person: Person? = Person(name: "김우성")
    var motorcycle: Motorcycle? = Motorcycle(modelName: "R12 G/S")
    
    // 순환 참조
    person?.motorcycle = motorcycle
    motorcycle?.owner = person
    
// 순환 참조 유발 클로저
    //    motorcycle?.closure = {
    //        print("\(person!.name) 이 \(motorcycle?.modelName) 을 타고 있다.")
    //    }
    
    motorcycle?.closure = { [weak person] in
        guard let person = person else { return }
        print("\(person.name) 이 \(person.motorcycle!.modelName) 을 타고 있다.")
    }
    
    motorcycle?.closure?()
    
    person = nil
    motorcycle = nil
}
