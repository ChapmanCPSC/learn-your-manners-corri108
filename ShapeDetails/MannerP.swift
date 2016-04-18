//
//  Shape.swift
//  ShapeDetails
//
//  Created by Corrin, William on 4/11/16.
//  Copyright © 2016 Corrin, William. All rights reserved.
//

import UIKit

protocol MannerP {
    
    var color : UIColor { get }
    var name : String { get }
    var imgName : String { get }
    var details : String { get }
    var seen : Bool { get set }
    
    func draw(rect : CGRect) -> UIView
    func onSeen() -> UIView
    
}