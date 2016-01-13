//
//  LobbyViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 13/01/16.
//  Copyright © 2016 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class LobbyViewController: UIViewController {

    @IBOutlet weak var lblLid1: UILabel!
    @IBOutlet weak var lblLid2: UILabel!
    @IBOutlet weak var lblLid3: UILabel!
    
    var naam: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLid1.hidden = true;
        lblLid2.hidden = true;
        lblLid3.hidden = true;
        
        
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
            
            //(gebruikers:[AnyObject]?, error: NSError) -> Void in
            var i = 0
            if error == nil {
                for gebruiker in gebruikers!{
                    
                    if(i == 0)
                    {
                        self.lblLid1.hidden = false;
                        let lbl1Let = gebruiker.objectForKey("naam")
                        let lbl1String:String = lbl1Let as! String
                        self.lblLid1.text = lbl1String
                        if(self.lblLid1 == self.naam)
                        {
                            self.lblLid1.textColor = UIColor.redColor()
                        }
                    }
                    if(i == 1)
                    {
                        self.lblLid2.hidden = false;
                        let lbl2Let = gebruiker.objectForKey("naam")
                        let lbl2String:String = lbl2Let as! String
                        self.lblLid2.text = lbl2String
                    }
                    if(i == 2)
                    {
                        self.lblLid3.hidden = false;
                        let lbl3Let = gebruiker.objectForKey("naam")
                        let lbl3String:String = lbl3Let as! String
                        self.lblLid3.text = lbl3String
                    }
                    i = i + 1
                }
                
            }
            else{
                print("Error in retrieving \(error)")
            }

        // Do any additional setup after loading the view.
    }

    func didReceiveMemoryWarning() {
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
}
