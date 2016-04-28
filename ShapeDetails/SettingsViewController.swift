//
//  ShapeDetailViewController.swift
//  ShapeDetails
//
//  Created by Corrin, William on 4/11/16.
//  Copyright © 2016 Corrin, William. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var emailString: UITextField!
    var defaults : NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad()
    {
        let myOutput = NSUserDefaults.standardUserDefaults().objectForKey("Username")
        
        if(myOutput != nil)
        {
            if (myOutput as? String != nil)
            {
                emailString.text = (myOutput) as! String
            }
        }
        
        print(myOutput)
        super.viewDidLoad()
    }
    
    @IBAction func onEditChanged(sender: UITextField) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackClicked(sender: AnyObject)
    {
        var myValue : NSString = emailString.text!
        
        NSUserDefaults.standardUserDefaults().setObject(myValue, forKey:"Username")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        //defaults.setString("user_email", forKey: emailString.text!)
        //defaults.synchronize()
        // coprint(emailString.text!)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
