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
    @IBOutlet weak var mapView: MKMapView!
    var groepsnaam: String!
   
    @IBAction func btnZetPin(sender: UIButton) {
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.countObjectsInBackgroundWithBlock {(count :Int32, NSError error) -> Void in
            
            if error == nil
            {
                if(count == 1)
                {
                    let pin1 = CLLocationCoordinate2DMake(51.431905,5.454524)
                    let annotation1 = MKPointAnnotation()
                    annotation1.coordinate = pin1
                    annotation1.title = "Title 1"
                    annotation1.subtitle = "Subtitle 1"
                    self.mapView.addAnnotation(annotation1)
                }
                if(count == 2)
                {
                    let pin2 = CLLocationCoordinate2DMake(51.430347, 5.502702)
                    let annotation2 = MKPointAnnotation()
                    annotation2.coordinate = pin2
                    annotation2.title = "Title 2"
                    annotation2.subtitle = "Subtitle 2"
                    self.mapView.addAnnotation(annotation2)
                }
                if(count == 3)
                {
                    let pin3 = CLLocationCoordinate2DMake(51.462372, 5.460132)
                    let annotation3 = MKPointAnnotation()
                    annotation3.coordinate = pin3
                    annotation3.title = "Title1 3"
                    annotation3.subtitle = "Subtitle3"
                    self.mapView.addAnnotation(annotation3)
                }
                
                if(count == 4)
                {
                    let pin4 = CLLocationCoordinate2DMake(51.456226, 5.516220)
                    let annotation4 = MKPointAnnotation()
                    annotation4.coordinate = pin4
                    annotation4.title = "Title 4"
                    annotation4.subtitle = "Subtitle 4"
                    self.mapView.addAnnotation(annotation4)
                }
                if(count == 5)
                {
                    let pin5 = CLLocationCoordinate2DMake(51.449501,5.479442)
                    let annotation5 = MKPointAnnotation()
                    annotation5.coordinate = pin5
                    annotation5.title = "Title 5"
                    annotation5.subtitle = "Subtitle 5"
                    self.mapView.addAnnotation(annotation5)
                }
            }
        
        }
    }
    
    @IBAction func btnLeden(sender: UIButton) {
    }
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        zoomToRegion()
        
        var annotations1:Array = [Pin]()
        var annotations2:Array = [Pin]()
        
        let lat1:Double = 51.431905
        let long1:Double = 5.454524
        let annotation1 = Pin(latitude: lat1, longitude: long1)
        annotation1.title = "Gezet door: Koos"
        annotations1.append(annotation1)
        
        let lat2:Double = 51.456226
        let long2:Double = 5.51622
        let annotation2 = Pin(latitude: lat2, longitude: long2)
        annotation2.title = "Gezet door: Dylan"
        annotations1.append(annotation2)
        
        let lat3:Double = 51.462372
        let long3:Double = 5.460132
        let annotation3 = Pin(latitude: lat3, longitude: long3)
        annotation3.title = "Gezet door: Ronald"
        annotations2.append(annotation3)
        
        let lat4:Double = 51.430347
        let long4:Double = 5.502702
        let annotation4 = Pin(latitude: lat4, longitude: long4)
        annotation4.title = "Gezet door: Mick"
        annotations2.append(annotation4)
        
        //let annotations = getMapAnnotations()
        
        // Add mappoints to Map
        mapView.addAnnotations(annotations1)
        mapView.addAnnotations(annotations2)
        
        mapView.delegate = self
        
        // Connect all the mappoints using Poly line.
        
        var points1: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        for annotation in annotations1 {
            points1.append(annotation.coordinate)
        }
        
        var points2: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        for annotation in annotations2 {
            points2.append(annotation.coordinate)
        }
        
        
        
        
        let polyline1 = MKPolyline(coordinates: &points1, count: points1.count)
        
        let polyline2 = MKPolyline(coordinates: &points2, count: points2.count)
        
        mapView.addOverlay(polyline1)
        mapView.addOverlay(polyline2)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Zoom to region
    
    func zoomToRegion() {
        let huidigeLocatie = CLLocationCoordinate2DMake(51.449501,5.479442)
        
        let span = MKCoordinateSpanMake(0.08, 0.08)
        
        let region = MKCoordinateRegion(center: huidigeLocatie, span: span)
        
        mapView.setRegion(region, animated: true)
        
        /*
        
        let location = CLLocationCoordinate2D(latitude: 13.03297, longitude: 80.26518)
        
        let region = MKCoordinateRegionMakeWithDistance(location, 5000.0, 7000.0)
        
        mapView.setRegion(region, animated: true)
        */
    }
    
    //MARK:- Annotations
    
    func getMapAnnotations() -> [Pin] {
        var annotations:Array = [Pin]()
        
        //load plist file
        
        var pins: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("pins", ofType: "plist") {
            pins = NSArray(contentsOfFile: path)
        }
        if let items = pins {
            for item in items {
                let lat = item.valueForKey("lat") as! Double
                let long = item.valueForKey("long")as! Double
                let annotation = Pin(latitude: lat, longitude: long)
                annotation.title = item.valueForKey("title") as? String
                annotations.append(annotation)
            }
        }
        
        return annotations
    }
    
    //MARK:- MapViewDelegate methods
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        let polylineRenderer = MKPolylineRenderer(overlay: overlay)
        
        if overlay is MKPolyline {
            polylineRenderer.strokeColor = UIColor.blueColor()
            polylineRenderer.lineWidth = 5
            
        }
        return polylineRenderer
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
