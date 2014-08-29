//
//  DetailViewController.swift
//  minPlus
//
//  Created by Matias GIl on 8/27/14.
//  Copyright (c) 2014 Matias GIl. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{
    
    var item: Item?
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemName.text = item?.name
        itemCount.text = "\(item?.count)"
    }
    
    @IBAction func plusCount(sender: AnyObject) {
        self.item?.increment()
        itemCount.text = "\(item?.count)"
    }

    @IBAction func minusCount(sender: AnyObject) {
        self.item?.decrement()
        itemCount.text = "\(item?.count)"
    }
}