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
        
        var annotations1:Array = [Pin]()
        var annotations2:Array = [Pin]()
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.countObjectsInBackgroundWithBlock {(count :Int32, NSError error) -> Void in
            
            if error == nil
            {
                if(count == 1)
                {
                    let lat1:Double = 51.431905
                    let long1:Double = 5.454524
                    let annotation1 = Pin(latitude: lat1, longitude: long1)
                    annotation1.title = "Gezet door: Koos"
                    annotations1.append(annotation1)
                    
                    self.mapView.addAnnotations(annotations1)
                    
                    self.mapView.delegate = self
                }
                if(count == 2)
                {
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
                    
                    self.mapView.addAnnotations(annotations1)
                    
                    self.mapView.delegate = self
                    
                    var points1: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
                    
                    for annotation in annotations1 {
                        points1.append(annotation.coordinate)
                    }
                    
                    let polyline1 = MKPolyline(coordinates: &points1, count: points1.count)
                    
                    self.mapView.addOverlay(polyline1)
                }
                if(count == 3)
                {
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
                    
                    self.mapView.addAnnotations(annotations1)
                    self.mapView.addAnnotations(annotations2)
                    
                    self.mapView.delegate = self
                    
                    var points1: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
                    
                    for annotation in annotations1 {
                        points1.append(annotation.coordinate)
                    }
                    
                    let polyline1 = MKPolyline(coordinates: &points1, count: points1.count)
                    
                    self.mapView.addOverlay(polyline1)
                }
                
                if(count == 4)
                {
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
                    self.mapView.addAnnotations(annotations1)
                    self.mapView.addAnnotations(annotations2)
                    
                    self.mapView.delegate = self
                    
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
                    
                    self.mapView.addOverlay(polyline1)
                    self.mapView.addOverlay(polyline2)
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
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.countObjectsInBackgroundWithBlock {(count :Int32, NSError error) -> Void in
            
            if error == nil
            {
                if(count == 2)
                {
                    let lat1:Double = 51.431905
                    let long1:Double = 5.454524
                    let annotation1 = Pin(latitude: lat1, longitude: long1)
                    annotation1.title = "Gezet door: Koos"
                    annotations1.append(annotation1)
                    
                    self.mapView.addAnnotations(annotations1)
                    
                    self.mapView.delegate = self
                    
                }
                if(count == 3)
                {
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
                    
                    self.mapView.addAnnotations(annotations1)
                    
                    self.mapView.delegate = self
                    
                    var points1: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
                    
                    for annotation in annotations1 {
                        points1.append(annotation.coordinate)
                    }
                    
                    let polyline1 = MKPolyline(coordinates: &points1, count: points1.count)
                    
                    self.mapView.addOverlay(polyline1)
                    
                }
                
                if(count == 4)
                {
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
                    
                    self.mapView.addAnnotations(annotations1)
                    self.mapView.addAnnotations(annotations2)
                    
                    self.mapView.delegate = self
                    
                    var points1: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
                    
                    for annotation in annotations1 {
                        points1.append(annotation.coordinate)
                    }
                    
                    let polyline1 = MKPolyline(coordinates: &points1, count: points1.count)
                    
                    self.mapView.addOverlay(polyline1)
                }
            }
        }
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
        
        var center = CLLocationCoordinate2D(latitude: 51.45169, longitude: 5.48160)
        
        let query = PFQuery(className:"Gebruikers")
        query.whereKey("groepsnaam", equalTo: "groep1")
        query.countObjectsInBackgroundWithBlock {(count :Int32, NSError error) -> Void in
            
            if error == nil
            {
                if(count == 1)
                {
                    center = CLLocationCoordinate2D(latitude: 51.431905, longitude: 5.454524)
                }
                if(count == 2)
                {
                    center = CLLocationCoordinate2D(latitude: 51.456226, longitude: 5.51622)
                }
                if(count == 3)
                {
                    center = CLLocationCoordinate2D(latitude: 51.462372, longitude: 5.460132)
                }
                if(count == 4)
                {
                    center = CLLocationCoordinate2D(latitude: 51.430347, longitude: 5.502702)
                }
            }
        }
        
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
