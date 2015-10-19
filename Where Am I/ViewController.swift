//
//  ViewController.swift
//  Where Am I
//
//  Created by Douglas P. Milstead on 10/15/15.
//  Copyright © 2015 Douglas P. Milstead. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        checkLocationAuthorizationStatus()
        
        locationManager.delegate = self
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    // override func viewDidAppear(animated: Bool) {
    //     super.viewDidAppear(animated)
    // }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
            mapView.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }

}

