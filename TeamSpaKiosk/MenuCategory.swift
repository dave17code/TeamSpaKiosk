//
//  MainMenu.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

struct MenuCategory {
    
    var name = "MenuCategory"
    
    let menu = ["1. Burgers         | 앵거스 비프 통살을 다져 만든 버거",
                "2. Drinks          | 매장에서 직접 만드는 음료"]
    
    func menuPrint() {
        print("======================================================================")
        print("SHACKSHACK BUGER에 오신걸 환영합니다.")
        print("아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.")
        print("======================================================================")
        print("")
        print("[ SHAKESHAKE MENU ]")
        for m in menu {
            print(m)
        }
    }
}
