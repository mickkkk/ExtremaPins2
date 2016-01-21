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
    
    @IBOutlet weak var btnGaVerder: UIButton!
    
    @IBOutlet weak var btnZetPin: UIButton!
    
    @IBAction func btnZetPin(sender: UIButton) {
        
        self.btnZetPin.hidden = true
        var annotations1:Array = [Pin]()
        var annotations2:Array = [Pin]()
        
        let lat1:Double = 51.345196
        let long1:Double = 5.485611
        let annotation1 = Pin(latitude: lat1, longitude: long1)
        annotation1.title = "Gezet door: Koos"
        annotations1.append(annotation1)
                    
        let lat2:Double = 51.430347
        let long2:Double = 5.502702
        let annotation2 = Pin(latitude: lat2, longitude: long2)
        annotation2.title = "Gezet door: Dylan"
        annotations1.append(annotation2)
                    
        let lat3:Double = 51.430347
        let long3:Double = 5.502702
        let annotation3 = Pin(latitude: lat3, longitude: long3)
        annotation3.title = "Gezet door: Ronald"
        annotations2.append(annotation3)
                    
        let lat4:Double = 51.468552
        let long4:Double = 5.595474
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
        
        self.btnGaVerder.hidden = false
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.btnGaVerder.hidden = true
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        var annotations1:Array = [Pin]()
        var annotations2:Array = [Pin]()
        var annotations3:Array = [Pin]()
        var annotations4:Array = [Pin]()
        var annotations5:Array = [Pin]()
        var annotations6:Array = [Pin]()
        
        let lat1:Double = 51.553167
        let long1:Double = 5.191727
        let annotation1 = Pin(latitude: lat1, longitude: long1)
        annotation1.title = "Gezet door: Koos"
        annotations1.append(annotation1)
        
        let lat2:Double = 51.455718
        let long2:Double = 5.392227
        let annotation2 = Pin(latitude: lat2, longitude: long2)
        annotation2.title = "Gezet door: Dylan"
        annotations1.append(annotation2)
        
        let lat3:Double = 51.551459
        let long3:Double = 5.392227
        let annotation3 = Pin(latitude: lat3, longitude: long3)
        annotation3.title = "Gezet door: Ronald"
        annotations2.append(annotation3)
        
        let lat4:Double = 51.459141
        let long4:Double = 5.198593
        let annotation4 = Pin(latitude: lat4, longitude: long4)
        annotation4.title = "Gezet door: Mick"
        annotations2.append(annotation4)
        
        let lat5:Double = 51.468552
        let long5:Double = 5.595474
        let annotation5 = Pin(latitude: lat5, longitude: long5)
        annotation5.title = "Gezet door: Ronald"
        annotations3.append(annotation5)
        
        let lat6:Double = 51.422333
        let long6:Double = 5.695724
        let annotation6 = Pin(latitude: lat6, longitude: long6)
        annotation6.title = "Gezet door: Mick"
        annotations3.append(annotation6)
        
        let lat7:Double = 51.422333
        let long7:Double = 5.695724
        let annotation7 = Pin(latitude: lat7, longitude: long7)
        annotation7.title = "Gezet door: Ronald"
        annotations4.append(annotation7)
        
        let lat8:Double = 51.341765
        let long8:Double = 5.703964
        let annotation8 = Pin(latitude: lat8, longitude: long8)
        annotation8.title = "Gezet door: Mick"
        annotations4.append(annotation8)
        
        let lat9:Double = 51.341765
        let long9:Double = 5.703964
        let annotation9 = Pin(latitude: lat9, longitude: long9)
        annotation9.title = "Gezet door: Ronald"
        annotations5.append(annotation9)
        
        let lat10:Double = 51.264493
        let long10:Double = 5.594101
        let annotation10 = Pin(latitude: lat10, longitude: long10)
        annotation10.title = "Gezet door: Mick"
        annotations5.append(annotation10)
        
        
        let lat11:Double = 51.264493
        let long11:Double = 5.594101
        let annotation11 = Pin(latitude: lat11, longitude: long11)
        annotation11.title = "Gezet door: Ronald"
        annotations6.append(annotation11)
        
        let lat12:Double = 51.345196
        let long12:Double = 5.485611
        let annotation12 = Pin(latitude: lat12, longitude: long12)
        annotation12.title = "Gezet door: Mick"
        annotations6.append(annotation12)

        
        //let annotations = getMapAnnotations()
        
        // Add mappoints to Map
        self.mapView.addAnnotations(annotations1)
        self.mapView.addAnnotations(annotations2)
        self.mapView.addAnnotations(annotations3)
        self.mapView.addAnnotations(annotations4)
        self.mapView.addAnnotations(annotations5)
        self.mapView.addAnnotations(annotations6)
        
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
        
        var points3: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        for annotation in annotations3 {
            points3.append(annotation.coordinate)
        }
        
        var points4: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        for annotation in annotations4 {
            points4.append(annotation.coordinate)
        }
        
        var points5: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        for annotation in annotations5 {
            points5.append(annotation.coordinate)
        }
        
        var points6: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        for annotation in annotations6 {
            points6.append(annotation.coordinate)
        }
        
        let polyline1 = MKPolyline(coordinates: &points1, count: points1.count)
        
        let polyline2 = MKPolyline(coordinates: &points2, count: points2.count)
        
        let polyline3 = MKPolyline(coordinates: &points3, count: points3.count)
        
        let polyline4 = MKPolyline(coordinates: &points4, count: points4.count)
        
        let polyline5 = MKPolyline(coordinates: &points5, count: points5.count)
        
        let polyline6 = MKPolyline(coordinates: &points6, count: points6.count)
        
        self.mapView.addOverlay(polyline1)
        self.mapView.addOverlay(polyline2)
        self.mapView.addOverlay(polyline3)
        self.mapView.addOverlay(polyline4)
        self.mapView.addOverlay(polyline5)
        self.mapView.addOverlay(polyline6)
        /*
        
        
        */

        // Do any additional setup after loading the view.
    }
    
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        let polylineRenderer = MKPolylineRenderer(overlay: overlay)
        
        if overlay is MKPolyline {
            polylineRenderer.strokeColor = UIColor.redColor()
            polylineRenderer.lineWidth = 10
        }
        return polylineRenderer
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let center = CLLocationCoordinate2D(latitude: 51.45169, longitude: 5.48160)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta:0.6, longitudeDelta:0.6))
        
        self.mapView.setRegion(region, animated: true)
        
        self.locationManager.stopUpdatingLocation()
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
