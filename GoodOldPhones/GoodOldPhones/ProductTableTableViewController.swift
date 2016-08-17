//
//  ProductTableTableViewController.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/9/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit

class ProductTableTableViewController: UITableViewController {
   
    var productNames: [String]?
    var prodcutImages: [UIImage]?
    //View DidLoad
    override func viewDidLoad() {
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", " 1984 Motorola Portable"]
    
    }
    
    //Use this function to prepare for segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        //check if specific segue is available to pass the right data to the right segue
        if segue.identifier == "ShowProductDetails"
        {
            //create a variable to pass the right view controller to
            let productVC = segue.destinationViewController as? ProductViewController
            //pass desired data to desired view controller
            // below is hard coding the productname
            //productVC?.productName = "Really OLD PHONE!!"
            //Instead we need to get dynamic data from the array we have created for product names
            //first we need to get the cell that was tapped
            //second get the indexPath of that cell
            //third use that indexPath to get the product name from the array
            //send the product name to the product view controller
            
         productVC?.productImage = UIImage(named:"phone-fullscreen3")
            //sender is the cell that caused the segue to happen
            // grab that cell in the variable cell
//            let cell = sender as? UITableViewCell
//            //we need to wrap the cell into optional biding because we are not sure if it will exist like below...if it exists we grab the cell indexPath
//            
//            if let c = cell {
//                let indexPath = tableView.indexPathForCell(c)
//                //since the indexPath also is optional we need to wrap it in optional biding as well if it exist will get the product name at the indexpath.row 
//                
//                if let ip = indexPath {
//                    let productName = productNames?[ip.row]
//                    //here we set the product name to the product view controller
//                    productVC?.productName = productName
//                }
//                
//            }
            //rewriting the above code to make it clean
            //we grab check if exisit and assign it to variable, do same with indexPathadn assign it to variable.set the name to view controller
            
//            if let cell = sender as? UITableViewCell{
//                if let indexPath = tableView.indexPathForCell(cell){
//                productVC?.productName = productNames?[indexPath.row]
//                }
//            }
            //instead of using if let twice we can use guard 
            guard let cell = sender as? UITableViewCell,
                   let indexPath = tableView.indexPathForCell(cell) else
            {
                return
            }
                productVC?.productName = productNames?[indexPath.row]
        }
        
        
    }
    
    //here we are setting how many initial rows we will have
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames
        {
            return pNames.count
        }
       return 0
    }
    //below function will run one time for each row meaning will run 5 times in our case
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductsCell", forIndexPath: indexPath)
       let productName = productNames?[indexPath.row]
        if let pNames = productName
        {
           cell.textLabel?.text = pNames
            
        }
        
                    cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
    
}

