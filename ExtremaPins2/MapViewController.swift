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
   
    @IBAction func btnZetPin(sender: UIButton) {
        let pin5 = CLLocationCoordinate2DMake(51.449501,5.479442)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = pin5
        annotation5.title = "Title 5"
        annotation5.subtitle = "Subtitle 5"
        
        mapView.addAnnotation(annotation5)
    }
    
    @IBAction func btnLeden(sender: UIButton) {
    }
    
    @IBOutlet weak var mapView: MKMapView!
    var groepsnaam: String!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        let huidigeLocatie = CLLocationCoordinate2DMake(51.449501,5.479442)
        
        let pin1 = CLLocationCoordinate2DMake(51.431905,5.454524)
        
        let pin2 = CLLocationCoordinate2DMake(51.430347, 5.502702)
        
        let pin3 = CLLocationCoordinate2DMake(51.462372, 5.460132)
        
        let pin4 = CLLocationCoordinate2DMake(51.456226, 5.516220)
        
        let span = MKCoordinateSpanMake(0.08, 0.08)
        
        let region = MKCoordinateRegion(center: huidigeLocatie, span: span)
        
        mapView.setRegion(region, animated: true)
        
        
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
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        
        
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
        
        //let locationFontys = CLLocationCoordinate2DMake(51.45169,5.48160)
        
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
