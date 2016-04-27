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
    
    @IBAction func onTextChanged(sender: AnyObject)
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setString("user_email", forKey: emailString.text!)
        print(emailString.text!)
    }
    
    override func viewDidLoad()
    {
        let loadedUserName = NSUserDefaults.standardUserDefaults().stringForKey("user_email") ?? ""
        emailString.text = loadedUserName
        print(loadedUserName)
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackClicked(sender: AnyObject)
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setString("user_email", forKey: emailString.text!)
        print(emailString.text!)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
