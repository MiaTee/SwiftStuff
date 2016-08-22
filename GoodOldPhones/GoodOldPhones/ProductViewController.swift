//
//  ProductViewController.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/9/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productPriceLabel: UILabel!
    var product: Product?
    var productImage: UIImage?
    

    
    override func viewDidLoad() {

        super.viewDidLoad()
        if let p = product
        {
             productNameLabel.text = p.name
            if let i = p.productImage
            {
                productImageView.image = UIImage(named:i)
             if let prs = p.productPrice
             {
                productPriceLabel.text = "$" + String(prs)
                
             }
            }
        }
      
        
        // Do any additional setup after loading the view.
    }

   
    @IBAction func addToCartButtonTapped(sender: AnyObject) {
                guard let product = product, let name = product.name else {
                    return
                }

        
        let alertController = UIAlertController(title: "Added To Cart", message: "You've added \(name) to cart", preferredStyle: UIAlertControllerStyle.Alert)
       presentViewController(alertController, animated: true, completion: nil)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//
//        if let product = product else
//        {
//            return
//        }
    
        print("ADD TO CART button was tapped!")
        
        let order = Order()
        order.product = product
        var ordersInCart = Orders.readOrdersFromArchive()
       
        if(ordersInCart == nil)
        {
            
            ordersInCart = []
        }
        ordersInCart?.append(order)
      
        if let orders = ordersInCart {
         Orders.saveOrdersToArchive(orders)
            print(orders[0])
           
            
        }
        
    }
}
