//
//  CustomMarkerView.swift
//  foursquare
//
//  Created by Juan Cabral on 20/02/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import Foundation
import UIKit

class CustomMarkerView: UIView {
    var img: UIImage?
    var borderColor: UIColor?
    
    init(frame: CGRect, image: UIImage, borderColor: UIColor, tag: Int) {
        super.init(frame: frame)
        self.img = image
        self.borderColor = borderColor
        self.tag = tag
        setupViews()
    }
    
    func setupViews(){
        //let imgView = UIImageView(image: img)
        let imgView = UIImageView()
        imgView.backgroundColor = UIColor(r: 57, g: 210, b: 51)
        //imgView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        imgView.layer.cornerRadius = 5
        imgView.layer.borderColor = borderColor?.cgColor
        imgView.layer.borderWidth = 1
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        //let lbl = UILabel(frame: CGRect(x: 0, y: 15, width: 30, height: 30))
        let lbl = UILabel()
        lbl.text = "▾"
        lbl.font = UIFont.systemFont(ofSize: 24)
        lbl.textColor = borderColor
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        //let lbl2 = UILabel(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        let lbl2 = UILabel()
        lbl.text = "1"
        lbl.font = UIFont.systemFont(ofSize: 24)
        lbl.textColor = .white
        lbl.textAlignment = .center
        
        
        self.addSubview(imgView)
        imgView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imgView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.addSubview(lbl)
        lbl.topAnchor.constraint(equalTo: imgView.bottomAnchor).isActive = true
        lbl.centerXAnchor.constraint(equalTo: imgView.centerXAnchor).isActive = true
        lbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        lbl.widthAnchor.constraint(equalToConstant: 25).isActive = true
        //self.addSubview(lbl2)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



