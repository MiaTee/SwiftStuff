//
//  ContactViewController.swift
//  GoodOldPhones
//
//  Created by Selma NB on 8/9/16.
//  Copyright © 2016 Selma Boudjemaa. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    //create an outlet for subview
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //our subview is not connected to the mainView
        //we needed to add it using below code to connect sview and mview
        view.addSubview(scrollView)
       
    
    }
    //we set the frame but we need to tell the subview how big the content is. Since, we set the height in the storyboard to 800 we need to do the same in the code
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSizeMake(375,800)
    }
   
    
    }
