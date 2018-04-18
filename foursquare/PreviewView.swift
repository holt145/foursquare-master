//
//  PreviewView.swift
//  foursquare
//
//  Created by Juan Cabral on 20/02/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import Foundation
import UIKit

class PreviewView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        setupViews()
    }
    
    
    func setData(title: String, img: UIImage, price: Int){
        lblTitle.text = title
        imgView.image = img
        lblPrice.text = "$\(price)"
    }
    
    func setupViews() {
        addSubview(containerView)
        containerView.leftAnchor.constraint(equalTo: leftAnchor).isActive=true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive=true
        containerView.rightAnchor.constraint(equalTo: rightAnchor).isActive=true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive=true
        
        containerView.addSubview(lblTitle)
        lblTitle.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive=true
        lblTitle.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive=true
        lblTitle.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 35).isActive=true
        
        addSubview(imgView)
        imgView.leftAnchor.constraint(equalTo: leftAnchor).isActive=true
        imgView.topAnchor.constraint(equalTo: lblTitle.bottomAnchor).isActive=true
        imgView.rightAnchor.constraint(equalTo: rightAnchor).isActive=true
        imgView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive=true
        
        addSubview(lblPrice)
        lblPrice.centerXAnchor.constraint(equalTo: centerXAnchor).isActive=true
        lblPrice.centerYAnchor.constraint(equalTo: imgView.centerYAnchor).isActive=true
        lblPrice.widthAnchor.constraint(equalToConstant: 90).isActive=true
        lblPrice.heightAnchor.constraint(equalToConstant: 40).isActive=true
    }
    
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lblTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Text"
        lbl.font = UIFont.systemFont(ofSize: 28)
        lbl.textColor = .black
        lbl.backgroundColor = .white
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let imgView : UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named:"restaurant1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let lblPrice : UILabel = {
        let lbl = UILabel()
        lbl.text = "$12"
        lbl.font = UIFont.systemFont(ofSize: 32)
        lbl.textColor = .white
        lbl.backgroundColor = UIColor(white: 0.2, alpha: 0.8)
        lbl.textAlignment = .center
        lbl.layer.cornerRadius = 5
        lbl.clipsToBounds = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
