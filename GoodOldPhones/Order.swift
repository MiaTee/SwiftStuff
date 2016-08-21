//
//  Order.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/20/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit
//in order to save to disk we need to use protocol called NSCoding
//NSCoding has two methods see below...
class Order: NSObject, NSCoding {
    var product:Product?
    
    override init(){
        super.init()
    }
    //in init we need to initialze every variable in the class
    required init?(coder aDecoder: NSCoder) {
        self.product = aDecoder.decodeObjectForKey("product") as? Product
        
        super.init()
    }
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeConditionalObject(product, forKey: "product")
    }
    

    
    
}
