# Ch 2. 프로그래밍 심화 주차 과제

Swift 문법과 고차 함수, 제네릭, 프로토콜, ARC, 객체지향 설계 등 실무에서 자주 마주치는 개념들을 연습하기 위한 실습 과제입니다. 각 문제는 Swift의 다양한 핵심 개념들을 직접 구현하고 테스트해보는 방식으로 구성되어 있으며, 해당 기능들이 실제 코드에서 어떻게 동작하는지를 명확히 이해하는 데 목적이 있습니다.

---

## 🔹 문제 요약 및 구성

### 🔹 필수 문제

### 1. 클로저 및 함수 호출

- 두 Int 값을 받아 합계를 문자열로 반환하는 클로저 `sum`
- 해당 클로저를 함수 파라미터로 받아 호출하는 `calculate` 함수 구현

### 2. 고차 함수 활용 및 직접 구현

- `map`을 활용해 for-in 반복문 대체
- `map`, `filter` 체이닝으로 짝수만 추출 후 문자열로 변환
- `myMap`이라는 고차 함수를 직접 구현해 `map`과 동일한 동작 수행

### 3. 제네릭 함수 설계

- 짝수 번째 요소 제거 함수 `a`, `b`
- 이를 제네릭으로 일반화한 `c`
- `Numeric` 프로토콜을 만족하는 타입으로 제한한 `d`

### 4. 프로토콜 기반 다형성 및 옵저빙

- `Introducible` 프로토콜 설계 및 `Robot`, `Cat`, `Dog` 클래스 구현
- `Robot`의 `name` 변경 시 변경 로그 출력
- 기본 메서드 구현 및 고유 기능 수행
- `[Introducible]` 배열을 통해 다형성 구현

### 5. 오류 처리 및 열거형 기반 로직 분기

- `DeliveryStatus` 열거형과 `DeliveryError` 예외 타입 정의
- `predictDeliveryDay()` 함수 구현
- `do-catch`를 통한 오류 분기 처리 및 사용자 메시지 출력

---

### 🌟 도전 문제

### 1. 객체지향 설계

- `Car` 기반 클래스와 접근제어자 설정
- `ElectricCar`, `HybridCar` 상속 및 기능 확장
- 런타임 시 엔진을 변경할 수 있는 `switchEngine()` 구현
- 상속 vs. 프로토콜의 차이 주석 설명 포함

### 2. 제네릭 제약 조건 사용법

- `SortableBox<T>` 제네릭 구조체 설계
- `T: Comparable`일 경우만 정렬 메서드 사용 가능하도록 구현

### 3. 프로토콜 기본 구현 제공

- `extension`을 통해 `Introducible` 프로토콜에 기본 메서드 구현 제공
- `Robot`은 이 기본 메서드를 override

### 4. ARC 및 순환 참조 해결

- `Person`, `Motorcycle` 클래스 간의 강한 참조 및 클로저 기반 순환 참조 구현
- `weak`, `[weak self]`를 통한 순환 참조 해제 구현

---

## 📅 실행 방법

1. Xcode 또는 Swift 실행 환경에서 프로젝트 파일을 열고 `main.swift` 실행
2. 터미널에 문제 번호 입력 (1~8)
3. 각 문제의 결과 출력 확인
4. `0` 입력 시 종료

---

## 🔧 기술 스택 및 개념 정리

- Swift 문법
- 클로저와 고차 함수(map, filter, compactMap 등)
- 제네릭 및 제약 조건
- 열거형 및 에러 처리
- 프로토콜과 클래스 상속
- 접근 제어자(private, fileprivate 등)
- ARC 및 메모리 해제 (deinit)

---

## ✅ 테스트 및 검증

- 각 문제는 `problem01() ~ problem08()` 형태의 함수로 구현되어 있으며,
- `main.swift`에서 직접 실행하여 문제별 출력 확인 가능
- 예외 상황 (에러, 이름 미변경 등) 에 대한 테스트 코드 포함

---
