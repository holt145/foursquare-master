//
//  ViewController.swift
//  foursquare
//
//  Created by Juan Cabral on 12/02/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import UIKit
import GoogleMaps

class MapController: UIViewController {

    var camera : GMSCameraPosition?
    var mapView : GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logout()
        
        //Themes 4,5
        
        var user = User(name: "Juan Cabral", image: "")
        var post = Post(text: "Swift ", imageUrl: "", user: user)
        
        post.incrementComments()
        post.incrementComments()
        post.incrementLikes()
        post.incrementLikes()
        
        print("comments: \(post.getComments()); likes: \(post.getLikes());")
        print("tuple: \(post.getCounters()); \(post.getDisplayTimeAgo(date:  Date(timeIntervalSinceNow: -60*60*24*7*4)))")
        print("userId: \(post.user?.id)")
        
        //Themes 6,7
        
        var point = Point<String>(x: 1, y:2, value: "Juan")
        var list : [Point<String>] = [Point<String>(x:2.0, y:3.0), Point<String>(x:2.0, y:4.0)]
        
        
        Point<String>(x:2.0, y:4.0, value: "String")
        
        print(point[2.0,3.0])
        
        
   
        
        view.backgroundColor = UIColor.blue
        GMSServices.provideAPIKey("AIzaSyBrhqt58YWx7VTwA-Za6k8QlaK9CZcUNdQ")
        
        //20.7321983,-103.3736167,16.05
        camera = GMSCameraPosition.camera(withLatitude: 20.7321983, longitude: -103.3736167, zoom: 14.05)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera!)
        mapView?.isMyLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 20.735026, longitude: -103.370962)
        marker.title = "Tec Milenio"
        marker.snippet = "Mexico"
        marker.map = mapView
        
        //20.731995,-103.38216,
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 20.731995, longitude: -103.38216)
        marker2.title = "Auditorio Telmex"
        marker2.snippet = "Mexico"
        marker2.map = mapView
        
        let p1 = CGPoint(x: 20, y: 10)
        let p2 = CGPoint(x: 30, y: 10)
        let p3 = CGPoint(x: 40, y: 10)
        let p4 = CGPoint(x: 50, y: 10)
        let p5 = CGPoint(x: 60, y: 10)
        let p6 = CGPoint(x: 70, y: 10)
        let p7 = CGPoint(x: 80, y: 10)
        let p8 = CGPoint(x: 90, y: 10)
        let p9 = CGPoint(x: 100, y: 10)
        let mp = CGPoint(x: 110, y: 10)
        
        var points = [CGPoint]()
        points.append(p1)
        points.append(p2)
        points.append(p3)
        points.append(p4)
        points.append(p5)
        points.append(p6)
        points.append(p7)
        points.append(p8)
        points.append(p9)
       
        do{
            var place = getPoints(values: points, referencePoint: mp, radius:1)
        }
    }
    func setPoints(map:CGPoint)
    {
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: CLLocationDegrees(map.x), longitude: CLLocationDegrees(map.y))
        marker.title = ""
        marker.snippet = ""
        marker.map = mapView
    }
    
    func getPoints(values:[CGPoint], referencePoint :CGPoint , radius:Double) ->[CGPoint]
    {
        let finalList = [CGPoint]()
        for i in values
        {
            let p = P(r: i, referencePoint: referencePoint)
            print(p.resp)
            
                setPoints(map: i)
            
        }
        return finalList
    }
    struct P
    {
        var res:Double
        var list:CGPoint
        var resp:CGPoint
        init (r:CGPoint, referencePoint: CGPoint)
        {
            self.list = r
            self.resp = referencePoint
            let xDist = list.x - resp.x
            let yDist = list.y - resp.y
            self.res = Double(sqrt((xDist * xDist) + (yDist * yDist)))
        }
        subscript(idx:Int) -> Double
        {
            get
            {
                return res
            }
        }
    }
    func logout(){
       var loginController: LoginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    
}

