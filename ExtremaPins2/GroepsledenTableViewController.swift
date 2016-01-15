//
//  GroepsledenTableViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 14/01/16.
//  Copyright © 2016 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class GroepsledenTableViewController: UITableViewController {

    var groepsLeden = [String]()
    
    
    
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groepsLeden.count       }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
       let cell = UITableViewCell()

        // Configure the cell...
        let (groep) = groepsLeden[indexPath.row]
        cell.textLabel?.text = groep

        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
            
            //(gebruikers:[AnyObject]?, error: NSError) -> Void in
            if error == nil
            {
                for g in gebruikers!{
                    self.groepsLeden.append(g.objectForKey("naam") as! String)
                }
                self.tableView.reloadData()
                //self.groepsLeden = gebruikers!
            }
            else
            {
                print("Error in retrieving \(error)")
            }
        }

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

