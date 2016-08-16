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
    var productName: String?
    

    
    override func viewDidLoad() {

        super.viewDidLoad()
        productNameLabel.text = productName
        productImageView.image = UIImage(named:"phone-fullscreen3")
        // Do any additional setup after loading the view.
    }

   
    @IBAction func addToCartButtonTapped(sender: AnyObject) {
        
        print("ADD TO CART button was tapped!")
    }
}
