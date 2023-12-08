//  main.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/07.
//

import Foundation

var currentScreen = MenuCategory().name
var orders = Orders()
let won = 15.0 // 과제 예시대로 키오스크로 주어진 잔액은 불변

func showMenuCategory() {
        
    // 현재 화면은 메뉴 카테고리
    if currentScreen == "MenuCategory" {
                    
        MenuCategory().menuPrint()
        print("")
        print("[ ORDER MENU ]")
        print("5. Order         | 장바구니를 확인 후 주문합니다.")
        print("6. Cancel        | 진행중인 주문을 취소합니다.")
        
        let selectNumber = readLine()!

        // 메뉴 카테고리 선택
        switch selectNumber {
            // 1. Burgers
            case "1":
                print("")
                currentScreen = Burgers().name
            
            // 2. Drinks
            case "2":
                print("")
                currentScreen = Drinks().name
            
            // 5. Order
            case "5":
            
            // 장바구니 비어 있음
            if orders.orderList.isEmpty {
                print("")
                print("장바구니가 비어 있습니다.")
                print("")
                // 메뉴 카테고리 이동
                break
            }
            
            // 장바구니 들어 있음
            // 장바구니 목록 출력
            orders.orderPrint()
            
                let selectNumber = readLine()!
            
                switch selectNumber {
                
                // 1. 주문
                case "1":
                print("")
                    if orders.orderPrice.reduce(0, +) < 15.0 {
                        print("**********************")
                        print("주문이 완료되었습니다.")
                        print("**********************")
                        print("")
                        // showMenuCategory() 재귀 호출 탈출: 키오스크 종료
                        return
                    } else {
                        let lackAmount = orders.orderPrice.reduce(0, +) - 15.0
                        print("현재 잔액은 15.0W으로 \(String(format: "%.1f", lackAmount))W이 부족해서 주문할 수 없습니다.")
                        print("")
                    }
                    
                // 2. 메뉴판
                case "2":
                print("")
                
                default:
                    print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
                }
            
            case "6":
                
                // 장바구니 비어 있음
                if orders.orderList.isEmpty {
                    print("")
                    print("장바구니가 비어 있습니다.")
                    print("")
                    break
                }
            
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
    
    // 현재 화면은 버거 메뉴
    if currentScreen == "Burgers" {
        
        Burgers().menuPrint()
        let selectNumber = readLine()!

        switch selectNumber {
            
        // 1번 버거 선택
        case "1":
            print("")
            print(Burgers().menu[0].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
                
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Burgers().menu[0])
            orders.orderPrice.append(Burgers().menuPrice[0])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Burgers().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        // 2번 버거 선택
        case "2":
            print("")
            print(Burgers().menu[1].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!
            
            switch selectNumber {
                
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Burgers().menu[1])
            orders.orderPrice.append(Burgers().menuPrice[1])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Burgers().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        case "3":
            print("")
            print(Burgers().menu[2].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
                
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Burgers().menu[2])
            orders.orderPrice.append(Burgers().menuPrice[2])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Burgers().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        case "4":
            print("")
            print(Burgers().menu[3].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
            
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Burgers().menu[3])
            orders.orderPrice.append(Burgers().menuPrice[3])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Burgers().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        // 뒤로가기
        case "0":
            print("")
            currentScreen = MenuCategory().name
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    // 현재 화면은 드링크 메뉴
    if currentScreen == "Drinks" {
                
        Drinks().menuPrint()
        let selectNumber = readLine()!

        switch selectNumber {
            
        // 1번 드링크 선택
        case "1":
            print("")
            print(Drinks().menu[0].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
            
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Drinks().menu[0])
            orders.orderPrice.append(Drinks().menuPrice[0])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Drinks().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        // 2번 드링크 선택
        case "2":
            print("")
            print(Drinks().menu[1].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
                
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Drinks().menu[1])
            orders.orderPrice.append(Drinks().menuPrice[1])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Drinks().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        // 3번 드링크 선택
        case "3":
            print("")
            print(Drinks().menu[2].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
                
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Drinks().menu[2])
            orders.orderPrice.append(Drinks().menuPrice[2])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Drinks().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        // 4번 드링크 선택
        case "4":
            print("")
            print(Drinks().menu[3].dropFirst(3))
            print("위 메뉴를 장바구니에 추가 하시겠습니까?")
            print("1. 확인  2. 취소")
            
            let selectNumber = readLine()!

            switch selectNumber {
                
            // 장바구니 담기
            case "1":
            print("")
            print("장바구니에 추가 되었습니다.")
            print("")
            orders.orderList.append(Drinks().menu[3])
            orders.orderPrice.append(Drinks().menuPrice[3])
            currentScreen = MenuCategory().name
                
            // 장바구니 담기 취소
            case "2":
            print("")
            currentScreen = Drinks().name
            default:
                print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            }
            
        // 뒤로가기
        case "0":
            print("")
            currentScreen = MenuCategory().name
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
        }
    }
    
    showMenuCategory()
   
}

// 빌드 시 showMenuCategory() 최초 실행
showMenuCategory()
