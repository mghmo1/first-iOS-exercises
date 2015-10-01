//
//  ThirdViewController.swift
//  
//
//  Created by Maximilian Ott on 09.06.15.
//
//

import UIKit
import MapKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!

     let regionRadius: CLLocationDistance = 1000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     
        var location = CLLocation(
            latitude: 48.7416147,
            longitude: 9.1013116
        )
        
        var locationannot = CLLocationCoordinate2D(
            latitude: 48.7416147,
            longitude: 9.1013116
        )
        
        centerMapOnLocation(location)
        
        var annotation = MKPointAnnotation()
        
        annotation.coordinate = locationannot
        annotation.title = "Hochschule der Medien"
        annotation.subtitle = "Stuttgart"
        
        map.addAnnotation(annotation)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
   
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        map.setRegion(coordinateRegion, animated: true)
    }


}
