//  main.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

var currentScreen = MenuCategory().name
var orders = Orders()
let won = 15.0 // 과제 예시대로 키오스크로 주어진 잔액은 불변

// 빌드 시 showMenuCategory() 최초 실행
MenuCategory().showMenuCategory()
