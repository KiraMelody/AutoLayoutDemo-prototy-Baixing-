//
//  TableViewController.swift
//  TestAutoLayout
//
//  Created by TJQ on 16/7/20.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    var titlename = ["邯郸","张江","枫林","江湾","闵行"]
    var price = ["500元","100元","300元","200元","0元"]
    var distance = ["100米","200米","300米","400米","1000米"]
    var tag = ["火急","火急","置顶","置顶","一般"]
    var image = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.title = "租房"
        let editItem = UIBarButtonItem(title:"编辑",style:.Plain,target:self,action:"edit");
        self.navigationItem.rightBarButtonItem = editItem
    }
    
    func edit()
    {
        print("hahaha")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath) as! TableViewCell

        cell.titleLabel.text = titlename[indexPath.row]
        cell.priceLabel.text = price[indexPath.row]
        cell.distanceLabel.text = distance[indexPath.row]
        cell.tagLabel.text = tag[indexPath.row]
        cell.showImage.image = UIImage(named: "\(indexPath.row + 1).jpg")
        cell.showImage.contentMode = UIViewContentMode.ScaleAspectFit
        print ("\(indexPath.row + 1).jpg")
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 250.0
    }

}
