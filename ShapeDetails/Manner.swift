//
//  MannerSt.swift
//  corri108Assignment4
//
//  Created by Corrin, Will on 4/15/16.
//  Copyright © 2016 Corrin, William. All rights reserved.
//

import UIKit

struct Manner : MannerP
{
    var color : UIColor
    var name : String
    var imgName : String
    var details : String
    var seen : Bool 
    
    func draw(rect: CGRect) -> UIView {
        
        let image = UIImage(named: imgName)
        let v = UIImageView(image: image!)
        
        //let v = UIView(frame: rect)
        v.backgroundColor = self.color
        v.frame = CGRect(x: 0, y: 15, width: 30, height: 30)
        return v
    }
    
    func onSeen() -> UIView
    {
        let image = UIImage(named: "check")
        let v = UIImageView(image: image!)
            
        //let v = UIView(frame: rect)
        v.frame = CGRect(x: 0, y: 15, width: 30, height: 30)
        return v
    }
}
