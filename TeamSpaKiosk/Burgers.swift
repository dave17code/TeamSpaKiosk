//
//  Burgers.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

struct Burgers {
    
    var name = "Burgers"
    
    let menu = ["1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거",
                "2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거",
                "3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거",
                "4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거",
                "0. 뒤로가기"
    ]
    
    let menuPrice = ["6.9", "8.9", "9.4", "6.9"]
    
    func menuPrint() {
        print("[ Burgers MENU ]")
        for m in menu {
            print(m)
        }
    }
}

