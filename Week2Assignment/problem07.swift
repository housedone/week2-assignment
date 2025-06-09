//
//  problem07.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/9/25.
//

import Foundation

/// 도전 문제 2
struct SortableBox<T> {
    var items: [T]
}

extension SortableBox where T: Comparable {
    mutating func sortItems() {
        items.sort()
    }
}
func problem07() {
    var IntBox = SortableBox<Int>(items: [3, 1, 2])
    IntBox.sortItems()
    print(IntBox.items)
    
    var StringBox = SortableBox<String>(items: ["c", "a", "b"])
    StringBox.sortItems()
    print(StringBox.items)
    
//    /// Comparable 안 따르는 예제
//    var cgPointBox = SortableBox<CGPoint>(items: [CGPoint(x: 3, y: 1), CGPoint(x: 1, y: 2), CGPoint(x: 2, y: 3)])
//    cgPointBox.sortItems()
//    print(cgPointBox.items)
}
