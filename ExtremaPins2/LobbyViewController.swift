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
    @IBOutlet weak var lblLid4: UILabel!
    @IBOutlet weak var lblLid5: UILabel!
    
    var naam: String!
    var array: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLid1.hidden = true;
        lblLid2.hidden = true;
        lblLid3.hidden = true;
        lblLid4.hidden = true;
        lblLid5.hidden = true;
        
        
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
            
            //(gebruikers:[AnyObject]?, error: NSError) -> Void in
            var i = 0
            if error == nil {
                for gebruiker in gebruikers!{
                    self.array = gebruikers!
                    var arr:NSArray = self.array.reverseObjectEnumerator().allObjects
                    
                    for a in arr{
                    if(i == 0)
                    {
                        self.lblLid1.hidden = false;
                        let lbl1Let = a.objectForKey("naam")
                        let lbl1String:String = lbl1Let as! String
                        self.lblLid1.text = lbl1String
                        /*
                        if(self.lblLid1.isEqual(self.naam))
                        {
                            self.lblLid2.textColor = UIColor.redColor()
                            //self.lblLid1.textColor = UIColor(red: 1.0, green: 0.000, blue: 0.0, alpha: 1.0)
                        }
                        */
                    }
                    if(i == 1)
                    {
                        self.lblLid2.hidden = false;
                        let lbl2Let = a.objectForKey("naam")
                        let lbl2String:String = lbl2Let as! String
                        self.lblLid2.text = lbl2String
                        
                    }
                    if(i == 2)
                    {
                        self.lblLid3.hidden = false;
                        let lbl3Let = a.objectForKey("naam")
                        let lbl3String:String = lbl3Let as! String
                        self.lblLid3.text = lbl3String
                        
                    }
                    if(i == 3)
                    {
                        self.lblLid4.hidden = false;
                        let lbl4Let = a.objectForKey("naam")
                        let lbl4String:String = lbl4Let as! String
                        self.lblLid4.text = lbl4String
                        
                    }
                    if(i == 4)
                    {
                        self.lblLid5.hidden = false;
                        let lbl5Let = a.objectForKey("naam")
                        let lbl5String:String = lbl5Let as! String
                        self.lblLid5.text = lbl5String
                        
                    }
                    i = i + 1
                    }
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
