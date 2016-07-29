//
//  DetailViewController.swift
//  TestAutoLayout
//
//  Created by TJQ on 16/7/21.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var showImage : UIImageView! = UIImageView()
    var titleLabel : UILabel! = UILabel()
    var priceLabel : UILabel! = UILabel()
    var distanceLabel : UILabel! = UILabel()
    var selectIndexPath : NSIndexPath! = NSIndexPath()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "信息"
        self.edgesForExtendedLayout = .None
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(showImage)
        view.addSubview(titleLabel)
        view.addSubview(priceLabel)
        view.addSubview(distanceLabel)

        showImage.contentMode = .ScaleAspectFit
        titleLabel.font = UIFont.boldSystemFontOfSize(40)
        priceLabel.font = UIFont.systemFontOfSize(30)
        priceLabel.textColor = UIColor.purpleColor()
        distanceLabel.font = UIFont.systemFontOfSize(25)
        distanceLabel.textColor = UIColor.grayColor()
        
        showImage.snp_makeConstraints { (make) -> Void in
            make.top.leading.trailing.equalTo(view)
            make.height.equalTo(showImage.snp_width)
        }
        titleLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(showImage.snp_bottom).offset(10)
            make.width.equalTo(view).offset(-10)
            make.centerX.equalTo(view)
        }
        
        priceLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(titleLabel.snp_bottom)
            make.leading.equalTo(view).offset(5)
        }
        
        distanceLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(priceLabel.snp_bottom).offset(10)
            make.bottom.equalTo(view).offset(-5)
            make.leading.equalTo(view).offset(5)
        }
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let saved = defaults.objectForKey("\(selectIndexPath.row)") as? NSData {
            let data = NSKeyedUnarchiver.unarchiveObjectWithData(saved) as! Detail
            showImage.image = UIImage (named: data.show)
            titleLabel.text = data.title
            priceLabel.text = data.price
            distanceLabel.text = data.distance
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
