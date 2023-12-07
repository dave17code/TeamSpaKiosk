//  main.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

var currentScreen = MenuCategory().name

MenuCategory().menuPrint()

func kioskStart() {
    
    let selectNumber = readLine()!
    
    // 메뉴 카테고리 선택
    if currentScreen == "MenuCategory" {
                    
        switch selectNumber {
        case "1":
            currentScreen = Burgers().name
            Burgers().menuPrint()
        case "2":
            currentScreen = Drinks().name
            Drinks().menuPrint()
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    // 버거 메뉴 선택
    if currentScreen == "Burgers" {
        
        let selectNumber = readLine()!
        
        switch selectNumber {
        case "1":
            print(Burgers().menu[0].dropFirst(3))
        case "2":
            print(Burgers().menu[1].dropFirst(3))
        case "3":
            print(Burgers().menu[2].dropFirst(3))
        case "4":
            print(Burgers().menu[3].dropFirst(3))
        case "0":
            currentScreen = MenuCategory().name
            MenuCategory().menuPrint()
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    // 드링크 메뉴 선택
    if currentScreen == "Drinks" {
        
        let selectNumber = readLine()!
        
        switch selectNumber {
        case "1":
            print(Drinks().menu[0].dropFirst(3))
        case "2":
            print(Drinks().menu[1].dropFirst(3))
        case "3":
            print(Drinks().menu[2].dropFirst(3))
        case "4":
            print(Drinks().menu[3].dropFirst(3))
        case "0":
            currentScreen = MenuCategory().name
            MenuCategory().menuPrint()
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    kioskStart()
}

kioskStart()

    
    







