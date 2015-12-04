//
//  CreateViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 03/12/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class CreateViewController: UIViewController {

    @IBOutlet weak var tbGroepsnaam: UITextField!
    
    @IBOutlet weak var tbNaam: UITextField!
    
    @IBOutlet weak var tbLeeftijd: UITextField!
    
    @IBOutlet weak var tbWoonplaats: UITextField!
    
    @IBOutlet weak var tbGeslacht: UITextField!
    
    @IBOutlet weak var lblGroepCreated: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCreate(sender: UIButton) {
        let Gebruiker = PFObject(className: "Gebruikers")
        Gebruiker["naam"] = tbNaam.text
        Gebruiker["woonplaats"] = tbWoonplaats.text
        Gebruiker["leeftijd"] = tbLeeftijd.text
        Gebruiker["geslacht"] = tbGeslacht.text
        Gebruiker["isBeheerder"] = true
        
        // hier schrijf ik de gebruiker weg naar de database als beheerder.
        Gebruiker.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            self.lblGroepCreated.hidden = false
            
        }
        
        let Groep = PFObject(className: "Groep")
        Groep["naam"] = tbGroepsnaam.text
        Groep["aantal"] = 1 
        
        // hier schrijf ik de groep weg naar de database.
        Groep.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            self.lblGroepCreated.hidden = false
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
