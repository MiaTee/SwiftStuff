//
//  Orders.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/20/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit

class Orders: NSObject, NSCoding {
    
    var orders:[Order]?
    
    //just in case 
    override init(){
        super.init()
    }
    //in init we need to initialze every variable in the class
    required init?(coder aDecoder: NSCoder) {
        self.orders = aDecoder.decodeObjectForKey("orders") as? [Order]
        super.init()
    }
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeConditionalObject(orders, forKey: "orders")
    }

}
