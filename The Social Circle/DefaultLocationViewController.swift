//
//  DefaultLocationViewController.swift
//  The Social Circle
//
//  Created by Edward Collins-Dean on 7/19/15.
//  Copyright (c) 2015 Ed Dean. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class DefaultLocationViewController: UIViewController {
    
    @IBOutlet weak var viewDefaultLocationMap: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var camera = GMSCameraPosition.cameraWithLatitude(-33.86,
            longitude: 151.20, zoom: 6)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        viewDefaultLocationMap = mapView
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
