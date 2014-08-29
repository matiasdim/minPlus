//
//  ViewController.swift
//  minPlus
//
//  Created by Matias GIl on 8/27/14.
//  Copyright (c) 2014 Matias GIl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet
    var tableView: UITableView!
    
    var items: [Item] = [Item(name: "a",count: 1),Item(name: "b",count: 2),Item(name: "c",count: 3),Item(name: "d",count: 4)]
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel.text = self.items[indexPath.row].name
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
        
        self.performSegueWithIdentifier("DetailSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "DetailSegue"{
            let index = tableView.indexPathForSelectedRow()
            item = items[index.row]
            
            let dvc = segue.destinationViewController as DetailViewController
            dvc.item = item
        }
    }
}