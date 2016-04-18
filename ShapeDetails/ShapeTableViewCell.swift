//
//  ShapeTableViewCell.swift
//  ShapeDetails
//
//  Created by Corrin, William on 4/13/16.
//  Copyright © 2016 Corrin, William. All rights reserved.
//

import UIKit

class ShapeTableViewCell: UITableViewCell
{
    @IBOutlet weak var checkMark: UIView!
    @IBOutlet weak var shapePreview: UIView!
    @IBOutlet weak var shapeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        self.shapePreview.subviews.forEach { (v) -> () in
            v.removeFromSuperview()
        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initWithShape(manner : Manner)
    {
        self.shapeName.text = manner.name
        self.shapePreview.addSubview(manner.draw(CGRect(x: 0, y: 0, width: 30, height: 30)))
    }
    
    func doCheckMark(manner : Manner)
    {
        if(manner.seen)
        {
            self.checkMark = manner.onSeen()
            self.backgroundColor = UIColor.lightGrayColor()
        }
    }
}