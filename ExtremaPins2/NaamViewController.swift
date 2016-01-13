//
//  NaamViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 13/01/16.
//  Copyright © 2016 Mick Vranken. All rights reserved.
//

import UIKit
import Parse

class NaamViewController: UIViewController {

    @IBOutlet weak var tbNaam: UITextField!
    
    @IBAction func btnVerder(sender: UIButton) {
        let Gebruiker = PFObject(className: "Gebruikers")
        Gebruiker["naam"] = tbNaam.text
        Gebruiker["groepsnaam"] = "groep1"
        Gebruiker["gestart"] = false
        
        // hier schrijf ik de gebruiker weg naar de database als beheerder.
        Gebruiker.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            //self.lblGroepCreated.hidden = false
            
        }

    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "SegueNaam"){
            let svc = segue.destinationViewController as! LobbyViewController
            svc.naam = tbNaam.text
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
