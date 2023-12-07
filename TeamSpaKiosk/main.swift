//  main.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

var currentScreen = MenuCategory().name

//MenuCategory().menuPrint()

func kioskStart() {
    
    // 메뉴 카테고리 선택
    if currentScreen == "MenuCategory" {
                    
        MenuCategory().menuPrint()
        let selectNumber = readLine()!

        switch selectNumber {
        case "1":
            print("")
            currentScreen = Burgers().name
        case "2":
            print("")
            currentScreen = Drinks().name
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    // 버거 메뉴 선택
    if currentScreen == "Burgers" {
        
        Burgers().menuPrint()
        let selectNumber = readLine()!

        switch selectNumber {

        case "1":
            print("")
            print(Burgers().menu[0].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
                
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            currentScreen = MenuCategory().name
            case "2":
            print("")
            currentScreen = Burgers().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        case "2":
            print(Burgers().menu[1].dropFirst(3))
        case "3":
            print(Burgers().menu[2].dropFirst(3))
        case "4":
            print(Burgers().menu[3].dropFirst(3))
        case "0":
            print("")
            currentScreen = MenuCategory().name
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    // 드링크 메뉴 선택
    if currentScreen == "Drinks" {
                
        Drinks().menuPrint()
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
            print("")
            currentScreen = MenuCategory().name
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    kioskStart()
}

kioskStart()

    
    







