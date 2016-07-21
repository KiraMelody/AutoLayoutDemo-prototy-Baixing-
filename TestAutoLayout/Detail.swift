//
//  Detail.swift
//  TestAutoLayout
//
//  Created by TJQ on 16/7/21.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit

class Detail: NSObject , NSCoding {
    
    var show : String
    var title : String
    var price : String
    var distance : String
    var index : Int
    
    init(_show: String, _title: String, _price: String, _distance: String, _index: Int)
    {
        show = _show
        title = _title
        price = _price
        distance = _distance
        index = _index
    }
    
    required init(coder aDecoder: NSCoder) {
        show = aDecoder.decodeObjectForKey("show") as! String
        title = aDecoder.decodeObjectForKey("title") as! String
        price = aDecoder.decodeObjectForKey("price") as! String
        distance = aDecoder.decodeObjectForKey("distance") as! String
        index = aDecoder.decodeObjectForKey("index") as! Int
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(show, forKey: "show")
        aCoder.encodeObject(title, forKey: "title")
        aCoder.encodeObject(price, forKey: "price")
        aCoder.encodeObject(distance, forKey: "distance")
        aCoder.encodeObject(index, forKey: "index")
    }
    
    
}
