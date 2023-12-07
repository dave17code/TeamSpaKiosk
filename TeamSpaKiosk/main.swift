//  main.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

var currentScreen = MenuCategory().name
var orders = Orders()

func showMenuCategory() -> Void {
    
    // 메뉴 카테고리 선택
    if currentScreen == "MenuCategory" {
                    
        MenuCategory().menuPrint()
        
        print("오더리스트 개수 \(orders.orderList.count)")
        
        // 장바구니에 메뉴 비어있음
        if orders.orderList.isEmpty {
            
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
        
        // 장바구니에 메뉴 들어있음
        if orders.orderList.isEmpty == false {
        
            print("")
            print("[ ORDER MENU ]")
            print("5. Order         | 장바구니를 확인 후 주문합니다.")
            print("6. Cancel        | 진행중인 주문을 취소합니다.")
            
            let selectNumber = readLine()!

            switch selectNumber {
            case "1":
                print("")
                currentScreen = Burgers().name
            case "2":
                print("")
                currentScreen = Drinks().name
            case "5":
                currentScreen = orders.name
                print(orders.orderPrint())
            case "6":
                // 진행 중인 주문 취소: 장바구니 비우기
                orders.orderList.removeAll()
                orders.orderPrice.removeAll()
                print("")
                print("진행 중인 주문을 취소했습니다.")
                print("")
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
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
            orders.orderList.append(Burgers().menu[0])
            orders.orderPrice.append(Burgers().menuPrice[0])
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
    
    // 장바구니 주문 창이 아닐 때에만 showMenuCategory() 재귀 호출
    if currentScreen != "orders" {
        showMenuCategory()
    }
}


    
    







