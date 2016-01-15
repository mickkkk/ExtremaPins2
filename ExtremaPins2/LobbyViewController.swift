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
    @IBOutlet weak var ivGestart1: UIImageView!
    @IBOutlet weak var ivGestart2: UIImageView!
    @IBOutlet weak var ivGestart3: UIImageView!
    @IBOutlet weak var ivGestart4: UIImageView!
    @IBOutlet weak var btnGoToMap: UIButton!
    
    @IBAction func btnGoToMap(sender: UIButton) {
    }
    
    
    
    @IBAction func btnStart(sender: UIButton) {
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("naam", equalTo: self.naam)
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
            
            if error == nil
            {
                for gebruiker in gebruikers!
                {
                    query.getObjectInBackgroundWithId(gebruiker.objectId!)
                    {
                        (gebruiker : PFObject?, error: NSError?) -> Void in
                        if error != nil
                        {
                            print(error)
                        } else if let gebruiker = gebruiker
                        {
                            gebruiker["naam"] = self.naam
                            gebruiker["groepsnaam"] = "groep1"
                            gebruiker["gestart"] = true
                            gebruiker.saveInBackground()
                        }
                        
                        //print(object.objectId)
                    }
                }
            } else{
                print("Error in retrieving \(error)")
            }
            self.viewDidLoad()
        }
    }
    
    var naam: String!
    var array: NSArray!
    var arr:NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnGoToMap.hidden = true;
        ivGestart1.hidden = true;
        ivGestart2.hidden = true;
        ivGestart3.hidden = true;
        ivGestart4.hidden = true;
        lblLid1.hidden = true;
        lblLid2.hidden = true;
        lblLid3.hidden = true;
        lblLid4.hidden = true;
        lblLid5.hidden = true;
        /*
        let query1 = PFQuery(className: "Gebruikers")
        query1.whereKey("groepsnaam", equalTo: "groep1")
        query1.countObjectsInBackgroundWithBlock {(countTotaal :Int32, NSError error) -> Void in
            
            if error == nil
            {
                let query2 = PFQuery(className: "Gebruikers")
                query2.whereKey("gestart", equalTo: true)
                query2.countObjectsInBackgroundWithBlock {(countGestart :Int32, NSError error) -> Void in
                    if error == nil{
                        var percentage :Int32 = round((4/5)*100
                        if(percentage > 74)
                        {
                            self.btnGoToMap.hidden = false;
                        }
                    }else{
                        print("Error in retrieving \(error)")
                    }
                }
            }
        }
        */

        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.findObjectsInBackgroundWithBlock {(NSArray gebruikers, NSError error) -> Void in
            
            //(gebruikers:[AnyObject]?, error: NSError) -> Void in
            var i = 0
            if error == nil {
                for gebruiker in gebruikers!
                {
                    self.array = gebruikers!
                    self.arr = self.array.reverseObjectEnumerator().allObjects
                    }
                    for a in self.arr
                    {
                        if(i == 0)
                        {
                            self.lblLid1.hidden = false;
                            let lbl1Let = a.objectForKey("naam")
                            let lbl1String:String = lbl1Let as! String
                            self.lblLid1.text = lbl1String
                            /*
                            if(self.lblLid1.isEqual(self.naam))
                            {
                                //self.lblLid2.textColor = UIColor.redColor()
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
                            self.ivGestart1.hidden = false;
                            let gestart:Bool = a.objectForKey("gestart") as! Bool
                            if(gestart == true)
                            {
                                self.ivGestart1.backgroundColor = UIColor.greenColor()
                            }
                            else
                            {
                                self.ivGestart1.backgroundColor = UIColor.redColor()
                            }
                        }
                        if(i == 2)
                        {
                            self.lblLid3.hidden = false;
                            let lbl3Let = a.objectForKey("naam")
                            let lbl3String:String = lbl3Let as! String
                            self.lblLid3.text = lbl3String
                            self.ivGestart2.hidden = false;
                            let gestart:Bool = a.objectForKey("gestart") as! Bool
                            if(gestart == true)
                            {
                                self.ivGestart2.backgroundColor = UIColor.greenColor()
                            }
                            else
                            {
                                self.ivGestart2.backgroundColor = UIColor.redColor()
                            }
                        }
                        if(i == 3)
                        {
                            self.lblLid4.hidden = false;
                            let lbl4Let = a.objectForKey("naam")
                            let lbl4String:String = lbl4Let as! String
                            self.lblLid4.text = lbl4String
                            self.ivGestart3.hidden = false;
                            let gestart:Bool = a.objectForKey("gestart") as! Bool
                            if(gestart == true)
                            {
                                self.ivGestart3.backgroundColor = UIColor.greenColor()
                            }
                            else
                            {
                                self.ivGestart3.backgroundColor = UIColor.redColor()
                            }
                        }
                        if(i == 4)
                        {
                            self.lblLid5.hidden = false;
                            let lbl5Let = a.objectForKey("naam")
                            let lbl5String:String = lbl5Let as! String
                            self.lblLid5.text = lbl5String
                            self.ivGestart4.hidden = false;
                            let gestart:Bool = a.objectForKey("gestart") as! Bool
                            if(gestart == true)
                            {
                                self.ivGestart4.backgroundColor = UIColor.greenColor()
                            }
                            else
                            {
                                self.ivGestart4.backgroundColor = UIColor.redColor()
                            }
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
