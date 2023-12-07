//
//  Drinks.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

struct Drinks {
    
    var name = "Drinks"
    
    let menu = ["1. Lemonade           | W 4.3 | 상큼한 레몬에이드",
                "2. Brewed Iced Tea    | W 3.5 | 직접 유기농 홍차를 우려낸 아이스 티",
                "3. Fountain Soda      | W 2.9 | 코카콜라, 코카콜라 제로, 스프라이트",
                "4. Abita Root Beer    | W 4.8 | 청량감 있는 독특한 미국식 무알콜 탄산음료",
                "0. 뒤로가기"]
    
    let menuPrice = ["4.3", "3.5", "2.9", "4.8"]
    
    func menuPrint() {
        print("[ Drinks MENU ]")
        for m in menu {
            print(m)
        }
    }
}

