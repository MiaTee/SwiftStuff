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
        
        print("ADD TO CART button was tapped!")
    }
}
