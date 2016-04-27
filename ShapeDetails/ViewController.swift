//
//  ViewController.swift
//  ShapeDetails
//
//  Created by Burns, Ryan Thomas on 4/11/16.
//  Copyright © 2016 Burns, Ryan Thomas. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var checked : [Bool]=[false,false,false,false,false,false,false,false]
    
    var shapes : [Manner] = [
        Manner(color: UIColor.redColor(), name: "Greeting People", imgName: "img1", details : "Greet people with a handshake, and smile at them when you do so! Make sure to say hello.", seen:  false),
        Manner(color: UIColor.blueColor(), name: "Knocking on the Door", imgName: "img2", details: "Knock on the door before you enter someone elses house. It is polite to do so!", seen:  false),
        Manner(color: UIColor.yellowColor(), name: "Being a Good Guest", imgName: "img3", details: "Be a good guest when you are over at another house. Be respectful and always listen to your host!", seen:  false),
        Manner(color: UIColor.greenColor(), name: "Being a Good Host", imgName: "img4", details: "Be a good host when you have people over. Ask them if they want a drink or need a snack! Show them where the bathroom is too.", seen:  false),
        Manner(color: UIColor.orangeColor(), name: "Finishing Your Food", imgName: "img5", details: "Make sure to always finish your plate of food. It is good for you and also is an important manner to have.", seen:  false),
        Manner(color: UIColor.purpleColor(), name: "Elbows Off the Table", imgName: "img6", details: "Always keep your elbows off of the table when you are eating - it is polite!", seen:  false),
        Manner(color: UIColor.cyanColor(), name: "Acting Positive For All Gifts", imgName: "img7", details: "When you recieve a gift from someone, you should always be greatful and act delighted. Even if you aren't that excited about it!", seen:  false),
        Manner(color: UIColor.magentaColor(), name: "Writing Thank-You Notes", imgName: "img8", details: "Make sure to always right a thank you note every time someone gives you a gift. It shows good manners.", seen:  false)
    ]
    
    @IBAction func onSettingsClicked(sender: UIBarButtonItem)
    {
        let navVC = self.storyboard!.instantiateViewControllerWithIdentifier("setting_view") as! UINavigationController
        
        //let settingsVC = navVC.viewControllers[0] as! SettingsViewController
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    //var defaults : NSUserDefaults
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //defaults = NSUserDefaults.standardUserDefaults()
        let cellNib = UINib(nibName: "ShapeTableViewCell", bundle: nil)
        self.tableView.registerNib(cellNib, forCellReuseIdentifier: "shape_cell")
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> ShapeTableViewCell
    {
        let manner = self.shapes[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("shape_cell") as! ShapeTableViewCell
        cell.initWithShape(manner)
        cell.doCheckMark(manner)
        
        //configure you cell here.
        if !checked[indexPath.row] {
            cell.accessoryType = .None
        } else if checked[indexPath.row] {
            cell.accessoryType = .Checkmark
        }
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let manner = self.shapes[indexPath.row]
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let navVC = self.storyboard!.instantiateViewControllerWithIdentifier("detail_view") as! UINavigationController
        
        let detailVC = navVC.viewControllers[0] as! ShapeDetailViewController
        detailVC.manner = manner
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("shape_cell") as! ShapeTableViewCell
        cell.doCheckMark(manner)
        detailVC.cel = cell
        
        self.presentViewController(navVC, animated: true, completion: nil)
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath)
        {
            if cell.accessoryType == .Checkmark
            {
                cell.accessoryType = .None
                checked[indexPath.row] = false
            }
            else
            {
                cell.accessoryType = .Checkmark
                checked[indexPath.row] = true
            }
        }    
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.shapes.count
    }
    
    //to reset all the check marks
    private func resetChecks() {
        for i in 0...tableView.numberOfSections-1 {
            for j in 0...tableView.numberOfRowsInSection(i) - 1 {
                if let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: j, inSection: i)) {
                    cell.accessoryType = .None
                }
            }
        }
    }
}

