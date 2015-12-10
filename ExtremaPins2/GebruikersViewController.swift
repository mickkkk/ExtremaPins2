//
//  GebruikersViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 10/12/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class GebruikersViewController: UIViewController, UITableViewDelegate {

    var groepsnaam: String!
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var lbl10: UILabel!
    @IBOutlet weak var lbl11: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1.hidden = true;
        lbl2.hidden = true;
        lbl3.hidden = true;
        lbl4.hidden = true;
        lbl5.hidden = true;
        lbl6.hidden = true;
        lbl7.hidden = true;
        lbl8.hidden = true;
        lbl9.hidden = true;
        lbl10.hidden = true;
        lbl11.hidden = true;
        
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: groepsnaam)
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
        
            //(gebruikers:[AnyObject]?, error: NSError) -> Void in
            var i = 0
            if error == nil {
                for gebruiker in gebruikers!{
                    
                    if(i == 0)
                    {
                        self.lbl1.hidden = false;
                        let lbl1Let = gebruiker.objectForKey("naam")
                        let lbl1String:String = lbl1Let as! String
                        self.lbl1.text = lbl1String
                    }
                    if(i == 1)
                    {
                        self.lbl2.hidden = false;
                        let lbl2Let = gebruiker.objectForKey("naam")
                        let lbl2String:String = lbl2Let as! String
                        self.lbl2.text = lbl2String
                    }
                    if(i == 2)
                    {
                        self.lbl3.hidden = false;
                        let lbl3Let = gebruiker.objectForKey("naam")
                        let lbl3String:String = lbl3Let as! String
                        self.lbl3.text = lbl3String
                    }
                    if(i == 3)
                    {
                        self.lbl4.hidden = false;
                        let lbl4Let = gebruiker.objectForKey("naam")
                        let lbl4String:String = lbl4Let as! String
                        self.lbl4.text = lbl4String
                    }
                    
                    if(i == 4)
                    {
                        self.lbl5.hidden = false;
                        let lbl5Let = gebruiker.objectForKey("naam")
                        let lbl5String:String = lbl5Let as! String
                        self.lbl5.text = lbl5String
                    }
                    
                    if(i == 5)
                    {
                        self.lbl6.hidden = false;
                        let lbl6Let = gebruiker.objectForKey("naam")
                        let lbl6String:String = lbl6Let as! String
                        self.lbl6.text = lbl6String
                    }
                    
                    if(i == 6)
                    {
                        self.lbl7.hidden = false;
                        let lbl7Let = gebruiker.objectForKey("naam")
                        let lbl7String:String = lbl7Let as! String
                        self.lbl7.text = lbl7String
                    }
                    if(i == 7)
                    {
                        self.lbl8.hidden = false;
                        let lbl8Let = gebruiker.objectForKey("naam")
                        let lbl8String:String = lbl8Let as! String
                        self.lbl8.text = lbl8String
                    }
                    if(i == 8)
                    {
                        self.lbl9.hidden = false;
                        let lbl9Let = gebruiker.objectForKey("naam")
                        let lbl9String:String = lbl9Let as! String
                        self.lbl9.text = lbl9String
                    }
                    if(i == 9)
                    {
                        self.lbl10.hidden = false;
                        let lbl10Let = gebruiker.objectForKey("naam")
                        let lbl10String:String = lbl10Let as! String
                        self.lbl10.text = lbl10String
                    }
                    if(i == 10)
                    {
                        self.lbl11.hidden = false;
                        let lbl11Let = gebruiker.objectForKey("naam")
                        let lbl11String:String = lbl11Let as! String
                        self.lbl11.text = lbl11String
                    }
                    i = i + 1
                }
                
            }
            else{
                print("Error in retrieving \(error)")
            }

        // Do any additional setup after loading the view.
    }
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/
    

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
