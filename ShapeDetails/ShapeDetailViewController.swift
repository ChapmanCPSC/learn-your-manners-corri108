//
//  ShapeDetailViewController.swift
//  ShapeDetails
//
//  Created by Corrin, William on 4/11/16.
//  Copyright © 2016 Corrin, William. All rights reserved.
//

import UIKit

class ShapeDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textDetails: UITextView!
    var manner : Manner!
    var cel : ShapeTableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = manner.name
        self.textDetails.text = manner.details
        manner.seen = true
        cel.doCheckMark(manner)
        
        let shapeView = self.manner.draw(CGRect(x: 0, y: 0, width: 200, height: 200))
        shapeView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(shapeView)
        
        let centerX = shapeView.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor)
        let centerY = shapeView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor)
        let widthConstraint = shapeView.widthAnchor.constraintEqualToConstant(200)
        let heightConstraint = shapeView.heightAnchor.constraintEqualToConstant(200)
        
        NSLayoutConstraint.activateConstraints([centerX, centerY, widthConstraint, heightConstraint])
        
        shapeView.alpha = 0
        UIView.animateWithDuration(1) { () -> Void in
            
            shapeView.alpha = 1
            shapeView.frame.origin.y = shapeView.frame.origin.y + 300
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
