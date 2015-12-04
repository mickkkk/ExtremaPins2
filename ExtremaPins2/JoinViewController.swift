//
//  JoinViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 03/12/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class JoinViewController: UIViewController {

    @IBOutlet weak var tbGroepsnaam: UITextField!
    @IBOutlet weak var tbNaam: UITextField!
    @IBOutlet weak var tbWoonplaats: UITextField!
    @IBOutlet weak var tbLeeftijd: UITextField!
    @IBOutlet weak var tbGeslacht: UITextField!
    @IBOutlet weak var lblGebruikerJoined: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnJoin(sender: UIButton) {
        
        //let textDatum = dpDatum.date
        // ik maak een slaapplek aan.
        /*
        
        let query = PFQuery(className:"Groep")
        query.whereKey("naam", equalTo: tbGroepsnaam)
        query.findObjectsInBackgroundWithBlock {(NSArray objects, NSError error) -> Void in
            
            
            
            if error == nil {
                //var i : Int = 1
                // The find succeeded.
                //print("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                // if let SlaapplekObjects = objects as? [PFObject]! {
                if let GroepsObjects = objects{
                    for Groep in GroepsObjects {
                        
                        let aantalLet = Groep.objectForKey("aantal")
                        var aantalInt: Int32 = aantalLet as! Int32
                        aantalInt = aantalInt + 1
                        
                        Groep.setValue(aantalInt as! AnyObject, forKey: "aantal")
                        
                        Groep["aantal"] = aantalInt  as! AnyObject
                        
                        /*
                        let datumLet = Slaapplek.objectForKey("Datum")
                        var datumString:String = datumLet as String
                        self.lblDatum1.text = datumString
                        */
                        
                    }
                }
            }
            else{
                print("Error in retrieving \(error)")
            }
        */
        //test voor ronald
        
        
        let Gebruiker = PFObject(className: "Gebruikers")
        Gebruiker["naam"] = self.tbNaam.text
        Gebruiker["woonplaats"] = self.tbWoonplaats.text
        Gebruiker["leeftijd"] = self.tbLeeftijd.text
        Gebruiker["geslacht"] = self.tbGeslacht.text
        Gebruiker["isBeheerder"] = false
        
        // hier schrijf ik de gebruiker weg naar de database.
        Gebruiker.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            self.lblGebruikerJoined.hidden = false
            
        }
        
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
//}
