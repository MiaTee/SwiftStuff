//
//  ProductTableTableViewController.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/9/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit

class ProductTableTableViewController: UITableViewController {
//here we are setting how many initial rows we will have
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
    }
    //below function will run one time for each row meaning will run 5 times in our case
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductsCell", forIndexPath: indexPath)
        
            cell.textLabel?.text = "Hello World!"
            cell.imageView?.image = UIImage(named: "imageCell1")
        
        return cell
    }

}

