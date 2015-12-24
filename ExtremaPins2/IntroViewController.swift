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
        
        let pinE1 = CLLocationCoordinate2DMake(51.787382,5.433426)
        
        let pinE2 = CLLocationCoordinate2DMake(51.787382,5.495224)
        
        let pinE3 = CLLocationCoordinate2DMake(51.767840,5.433426)
        
        let pinE4 = CLLocationCoordinate2DMake(51.767840,5.495224)
        
        let pinE5 = CLLocationCoordinate2DMake(51.732982,5.433426)
        
        let pinE6 = CLLocationCoordinate2DMake(51.732982,5.495224)
        
        
        let pinX1 = CLLocationCoordinate2DMake(51.423189,5.495911)
        
        let pinX2 = CLLocationCoordinate2DMake(51.808615, 4.699402)
        
        let pinX3 = CLLocationCoordinate2DMake(51.570241, 5.089417)
        
        let pinX4 = CLLocationCoordinate2DMake(51.812011, 5.457458)
        
        let pinX5 = CLLocationCoordinate2DMake(51.426614,4.617004)
        
        let annotationE1 = MKPointAnnotation()
        annotationE1.coordinate = pinE1
        annotationE1.title = "Gezet door: Henk"
        annotationE1.subtitle = "11-08-2016"
        
        let annotationE2 = MKPointAnnotation()
        annotationE2.coordinate = pinE2
        annotationE2.title = "Gezet door: Frenk"
        annotationE2.subtitle = "11-08-2016"
        
        let annotationE3 = MKPointAnnotation()
        annotationE3.coordinate = pinE3
        annotationE3.title = "Gezet door: Lars"
        annotationE3.subtitle = "11-08-2016"
        
        let annotationE4 = MKPointAnnotation()
        annotationE4.coordinate = pinE4
        annotationE4.title = "Gezet door: Koos"
        annotationE4.subtitle = "12-08-2016"
        
        let annotationE5 = MKPointAnnotation()
        annotationE5.coordinate = pinE5
        annotationE5.title = "Gezet door: Ronald"
        annotationE5.subtitle = "12-08-2016"
        
        let annotationE6 = MKPointAnnotation()
        annotationE6.coordinate = pinE6
        annotationE6.title = "Gezet door: Ronald"
        annotationE6.subtitle = "12-08-2016"
        
        
        
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
        
        
        mapView.addAnnotation(annotationE1)
        mapView.addAnnotation(annotationE2)
        mapView.addAnnotation(annotationE3)
        mapView.addAnnotation(annotationE4)
        mapView.addAnnotation(annotationE5)
        mapView.addAnnotation(annotationE6)
        
        mapView.addAnnotation(annotationX1)
        mapView.addAnnotation(annotationX2)
        mapView.addAnnotation(annotationX3)
        mapView.addAnnotation(annotationX4)
        mapView.addAnnotation(annotationX5)

        // Do any additional setup after loading the view.
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
