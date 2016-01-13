//
//  ShareViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 10/12/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    
    //var groepsnaamCreate: String!
    //var groepsnaamJoin: String!


    @IBOutlet weak var lblGroepsnaam: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        if(groepsnaamCreate != nil){
            lblGroepsnaam.text = groepsnaamCreate
        }
        else if(groepsnaamJoin != nil){
            lblGroepsnaam.text = groepsnaamJoin
        }
        else{
            lblGroepsnaam.text = "Groepsnaam"
        }
*/
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "SegueShare"){
            let svc = segue.destinationViewController as! MapViewController
            svc.groepsnaam = lblGroepsnaam.text
        }
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
