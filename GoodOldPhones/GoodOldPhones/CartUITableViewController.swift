//
//  CartUITableViewController.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/19/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit

class CartUITableViewController: UITableViewController {
    //we created a varialbe of type array to hold orders object
    //orders is a an array that holds order objects 
    //each order will have product information
    var ordersInCart: [Order]?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//because we are using tab controller view we want to make sure our view controller will refresh when we go from one vc to another
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //creating product variable is product object
        let product = Product()
        //product will have the following
        product.name = "1907 Wall Set"
        product.productImage = "phone-fullscreen1"
        product.cellImage = "image-cell1"
        product.productPrice = 120.00
        
        //Now we create new variable that holds Order object
        //Order object holds product object
        let order = Order()
        order.product = product
        //putting the order in ordersInCart array
        ordersInCart = [order]
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ordersInCart?.count ?? 0
        
        }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cartProductCell", forIndexPath: indexPath)
        
        let order = ordersInCart?[indexPath.row]
        if let order = order {
            cell.textLabel?.text = order.product?.name
            cell.detailTextLabel?.text = String(order.product?.productPrice)
            
            
        }
         return cell
    }
    
    
    //if you want to delete a row...meaning deleting a product 
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            //delete the row from the data source
            ordersInCart?.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    
    }
  
}

    
    

