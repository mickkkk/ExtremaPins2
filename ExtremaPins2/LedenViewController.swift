//
//  LedenViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 13/01/16.
//  Copyright © 2016 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class LedenViewController: UIViewController {

    
    @IBOutlet weak var tvTabel1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
            
            //(gebruikers:[AnyObject]?, error: NSError) -> Void in
            var i = 0
            if error == nil {
                for gebruiker in gebruikers!{
                    
                    if(i == 0)
                    {

                        let lbl1Let = gebruiker.objectForKey("naam")
                        let lbl1String:String = lbl1Let as! String
                        self.tvTabel1.
                        self.tvTabel1.text = lbl1String
                        /*
                        if(self.lblLid1.isEqual(self.naam))
                        {
                        self.lblLid2.textColor = UIColor.redColor()
                        //self.lblLid1.textColor = UIColor(red: 1.0, green: 0.000, blue: 0.0, alpha: 1.0)
                        }
                        */
                    }
*/

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
