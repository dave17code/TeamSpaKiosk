//
//  main.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

var currentMenu = Menu().name

Menu().menuPrint()

func selectMenu() {
    let select = readLine()!
    
    // 처음 메뉴 선정 
    if currentMenu == "Menu" {
        
        switch select {
        case "1":
            currentMenu = Burgers().name
            Burgers().menuPrint()
        case "2":
            currentMenu = Drinks().name
            Drinks().menuPrint()
        
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    // 상세 메뉴 선정
    if currentMenu != "Menu" {
        
        switch select {
        case "1":
            currentMenu = Burgers().name
            Burgers().menuPrint()
        case "2":
            currentMenu = Drinks().name
            Drinks().menuPrint()
        
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
}
    
    







