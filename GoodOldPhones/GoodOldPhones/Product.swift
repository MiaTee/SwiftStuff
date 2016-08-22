//
//  Product.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/16/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import Foundation
//we want this file to be a class so we type class name opening and closing bracket

class Product: NSObject, NSCoding
{
    
    var name: String?
    var productImage: String?
    var cellImage: String?
    var productPrice: Double?
    
    override init(){
        super.init()
    }
    //in init we need to initialze every variable in the class
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObjectForKey("name") as? String
        self.productImage = aDecoder.decodeObjectForKey("productImage") as? String
        self.cellImage = aDecoder.decodeObjectForKey("cellImage") as? String
        self.productPrice = aDecoder.decodeObjectForKey("productPrice") as? Double
        super.init()
    }
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "name")
        aCoder.encodeObject(productImage, forKey: "productImage")
        aCoder.encodeObject(cellImage, forKey: "cellImage")
        aCoder.encodeObject(productPrice, forKey: "productPrice")
    }
    

}