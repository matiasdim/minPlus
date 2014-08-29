//
//  item.swift
//  minPlus
//
//  Created by Matias GIl on 8/27/14.
//  Copyright (c) 2014 Matias GIl. All rights reserved.
//

import Foundation

class Item{
    
    var name: String
    var count: Int?
    
    init(name: String, count: Int){
        self.name = name
        if (count > 0) {
          self.count = count
        }else{
          self.count = 0
        }
    }
    
    func increment() -> Int{
        self.count = self.count! + 1
        return self.count!
    }
    
    func decrement() -> Int{
        if (self.count > 0) {
            self.count = self.count! - 1
        }
        return self.count!
    }
}