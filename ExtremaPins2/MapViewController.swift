//
//  MapViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 09/12/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Parse

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var btnZetPin: UIButton!
    @IBOutlet weak var btnLeden: UIButton!
    
    @IBOutlet weak var mapView: MKMapView!
    var groepsnaam: String!

    
    @IBAction func btnStart(sender: UIButton) {
        sender.setTitle("Stop", forState: .Normal)
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapview.showsUserLocation = true
        
        //var locationFontys = CLLocationCoordinate2DMake(51.45169,5.48160)
        
        let pin1 = CLLocationCoordinate2DMake(51.423189,5.495911)
        
        let pin2 = CLLocationCoordinate2DMake(51.808615, 4.699402)
        
        let pin3 = CLLocationCoordinate2DMake(51.570241, 5.089417)
        
        let pin4 = CLLocationCoordinate2DMake(51.812011, 5.457458)
        
        let pin5 = CLLocationCoordinate2DMake(51.426614,4.617004)
        
        
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = pin1
        annotation1.title = "Title 1"
        annotation1.subtitle = "Subtitle 1"
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = pin2
        annotation2.title = "Title 2"
        annotation2.subtitle = "Subtitle 2"
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = pin3
        annotation3.title = "Title1 3"
        annotation3.subtitle = "Subtitle3"
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = pin4
        annotation4.title = "Title 4"
        annotation4.subtitle = "Subtitle 4"
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = pin5
        annotation5.title = "Title 5"
        annotation5.subtitle = "Subtitle3"
        
        mapview.addAnnotation(annotation1)
        mapview.addAnnotation(annotation2)
        mapview.addAnnotation(annotation3)
        mapview.addAnnotation(annotation4)
        mapview.addAnnotation(annotation5)
    }

    @IBOutlet weak var mapview: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        //var locationFontys = CLLocationCoordinate2DMake(51.45169,5.48160)
        
        let pin1 = CLLocationCoordinate2DMake(51.423189,5.495911)
        
        let pin2 = CLLocationCoordinate2DMake(51.808615, 4.699402)
        
        let pin3 = CLLocationCoordinate2DMake(51.570241, 5.089417)
        
        let pin4 = CLLocationCoordinate2DMake(51.812011, 5.457458)
        
        let pin5 = CLLocationCoordinate2DMake(51.426614,4.617004)
        
        
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = pin1
        annotation1.title = "Title 1"
        annotation1.subtitle = "Subtitle 1"
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = pin2
        annotation2.title = "Title 2"
        annotation2.subtitle = "Subtitle 2"
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = pin3
        annotation3.title = "Title1 3"
        annotation3.subtitle = "Subtitle3"
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = pin4
        annotation4.title = "Title 4"
        annotation4.subtitle = "Subtitle 4"
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = pin5
        annotation5.title = "Title 5"
        annotation5.subtitle = "Subtitle3"
        
        mapview.addAnnotation(annotation1)
        mapview.addAnnotation(annotation2)
        mapview.addAnnotation(annotation3)
        mapview.addAnnotation(annotation4)
        mapview.addAnnotation(annotation5)
        
        
        //self.mapView.showsUserLocation = true
        
        /*
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: groepsnaam)
        query.countObjectsInBackgroundWithBlock {(int count, NSError error) -> Void in
            
            
            
            if error == nil {
                    self.lblAantalLeden.text = String(count)
                
            }
            else{
                print("Error in retrieving \(error)")
            }
        }
*/
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        //var locationFontys = CLLocationCoordinate2DMake(51.45169,5.48160)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta:0.08, longitudeDelta:0.08))
        
        //let region = MKCoordinateRegion(center: locationFontys, span: MKCoordinateSpan(latitudeDelta:0.08, longitudeDelta:0.08))
        
        self.mapView.setRegion(region, animated: true)
        
        self.locationManager.stopUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Errors: " + error.localizedDescription, terminator: "")
    }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "SegueMap"){
            let svc = segue.destinationViewController as! GebruikersViewController
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
