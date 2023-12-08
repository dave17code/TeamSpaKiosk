//
//  Orders.swift
//  TeamSpaKiosk
//
//  Created by woonKim on 2023/12/08.
//

import Foundation

class Orders {
    
    var name = "Orders"
    
    var orderList: [String] = []
    
    var orderPrice: [Double] = []
    
    func orderPrint() {
        print("")
        print("아래와 같이 주문 하시겠습니까?")
        print("")
        print("[ Orders ]")
        for o in orderList {
            print(o.dropFirst(3))
        }
        print("")
        print("[ Total ]")
        let total = orderPrice.reduce(0, +)
        print("W " + String(format: "%.1f", total))
        print("")
        print("1. 주문  2. 메뉴판")
    }
}
