//
//  Square.swift
//  ShapeDetails
//
//  Created by Burns, Ryan Thomas on 4/11/16.
//  Copyright © 2016 Burns, Ryan Thomas. All rights reserved.
//

import UIKit

struct Rectangle : Shape {
    
    var color : UIColor
    var name : String
    
    func draw(rect: CGRect) -> UIView {
        
        let v = UIView(frame: rect)
        v.backgroundColor = self.color
        return v
        
    }
    
}
