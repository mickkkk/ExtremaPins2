//
//  IntroViewController.swift
//  ExtremaPins2
//
//  Created by Fhict on 24/12/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Parse


class IntroViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        addRoute()
        /*
        
        
        */

        // Do any additional setup after loading the view.
    }
    
    func drawShape() {
        // Create a coordinates array to hold all of the coordinates for our shape.
        let pinX1 = CLLocationCoordinate2DMake(51.423189,5.495911)
        
        let pinX2 = CLLocationCoordinate2DMake(51.808615, 4.699402)
        
        let pinX3 = CLLocationCoordinate2DMake(51.570241, 5.089417)
        
        let pinX4 = CLLocationCoordinate2DMake(51.812011, 5.457458)
        
        let pinX5 = CLLocationCoordinate2DMake(51.426614,4.617004)
        
        
        
        let annotationX1 = MKPointAnnotation()
        annotationX1.coordinate = pinX1
        annotationX1.title = "Gezet door: Henk"
        annotationX1.subtitle = "11-08-2016"
        
        let annotationX2 = MKPointAnnotation()
        annotationX2.coordinate = pinX2
        annotationX2.title = "Gezet door: Frenk"
        annotationX2.subtitle = "11-08-2016"
        
        let annotationX3 = MKPointAnnotation()
        annotationX3.coordinate = pinX3
        annotationX3.title = "Gezet door: Lars"
        annotationX3.subtitle = "11-08-2016"
        
        let annotationX4 = MKPointAnnotation()
        annotationX4.coordinate = pinX4
        annotationX4.title = "Gezet door: Koos"
        annotationX4.subtitle = "12-08-2016"
        
        let annotationX5 = MKPointAnnotation()
        annotationX5.coordinate = pinX5
        annotationX5.title = "Gezet door: Ronald"
        annotationX5.subtitle = "12-08-2016"
        
        mapView.addAnnotation(annotationX1)
        mapView.addAnnotation(annotationX2)
        mapView.addAnnotation(annotationX3)
        mapView.addAnnotation(annotationX4)
        mapView.addAnnotation(annotationX5)
    }
    

    func addRoute() {
        
        
        var crdinates:[CLLocationCoordinate2D] = [
            CLLocationCoordinate2D(latitude: 51.423189, longitude: 5.495911),
            CLLocationCoordinate2D(latitude: 51.808615, longitude: 4.699402),
            CLLocationCoordinate2D(latitude: 51.570241, longitude: 5.089417),
            CLLocationCoordinate2D(latitude: 51.812011, longitude: 5.457458),
            CLLocationCoordinate2D(latitude: 51.426614, longitude: 4.617004),
        ]
        
        let myPolyline = MKPolyline(coordinates: &crdinates, count: crdinates.count)
        
        mapView.addOverlay(myPolyline)
    }
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
            let lineView = MKPolylineRenderer(overlay: overlay)
            lineView.strokeColor = UIColor.greenColor()
            
            return lineView
    }
    

    override func didReceiveMemoryWarning() {
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
