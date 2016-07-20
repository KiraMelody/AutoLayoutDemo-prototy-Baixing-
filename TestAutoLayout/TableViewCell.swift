//
//  TableViewCell.swift
//  TestAutoLayout
//
//  Created by TJQ on 16/7/20.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    var showImage : UIImageView! = UIImageView()
    var titleLabel : UILabel! = UILabel()
    var priceLabel : UILabel! = UILabel()
    var distanceLabel : UILabel! = UILabel()
    var tagLabel : UILabel! = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(showImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(distanceLabel)
        contentView.addSubview(tagLabel)
        
        titleLabel.font = UIFont.boldSystemFontOfSize(25)
        priceLabel.font = UIFont.systemFontOfSize(30)
        priceLabel.textColor = UIColor.purpleColor()
        distanceLabel.font = UIFont.systemFontOfSize(25)
        distanceLabel.textColor = UIColor.grayColor()
        tagLabel.font = UIFont.systemFontOfSize(15)
        
        showImage.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(contentView).offset(5)
            make.leading.equalTo(contentView).offset(5)
            make.bottom.equalTo(contentView).offset(-5)
            make.width.equalTo(165)
        }
        
        titleLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(contentView).offset(5)
            make.leading.equalTo(showImage.snp_trailing).offset(5)
            make.bottom.equalTo(priceLabel.snp_top).offset(-10)
            make.trailing.equalTo(contentView).offset(-5)
        }
        
        priceLabel.snp_makeConstraints { (make) -> Void in
            make.leading.equalTo(titleLabel)
            make.bottom.equalTo(distanceLabel.snp_top).offset(-5)
        }
        
        distanceLabel.snp_makeConstraints { (make) -> Void in
            make.bottom.equalTo(contentView).offset(-5)
            make.leading.equalTo(titleLabel)
        }
        
        tagLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(priceLabel)
            make.trailing.equalTo(contentView).offset(-5)
            make.bottom.equalTo(priceLabel)
        }

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
