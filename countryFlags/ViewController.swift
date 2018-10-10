//
//  ViewController.swift
//  countryFlags
//
//  Created by Jonathan SIMONNEY on 10/10/2018.
//  Copyright © 2018 Jonathan SIMONNEY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var belgianView = UIView()
    private var isBelgianViewShown = false

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.red
        
        let firstView = UIView()
        firstView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width/3, height: self.view.frame.height)
        firstView.backgroundColor = UIColor.blue
        
        let innerStar = UIImageView()
        innerStar.image = UIImage(named: "star")
        innerStar.frame = CGRect(x: firstView.frame.width/2 - 25, y: firstView.frame.height/2 - 25, width: 50, height: 50)
        
        let secondView = UIView()
        secondView.frame = CGRect(x: self.view.frame.width/3, y: 0, width: self.view.frame.width/3, height: self.view.frame.height)
        secondView.backgroundColor = UIColor.white
        
        let thirdView = UIView()
        thirdView.frame = CGRect(x: 2 * self.view.frame.width/3, y: 0, width: self.view.frame.width/3, height: self.view.frame.height)
        thirdView.backgroundColor = UIColor.red
        
        let secondInnerStar = UIImageView()
        secondInnerStar.image = UIImage(named: "star")
        secondInnerStar.frame = CGRect(x: thirdView.frame.width/2 - 25, y: thirdView.frame.height/2 - 25, width: 50, height: 50)
        
        firstView.addSubview(innerStar)
        thirdView.addSubview(secondInnerStar)
        
        self.view.addSubview(firstView)
        self.view.addSubview(secondView)
        self.view.addSubview(thirdView)
        
        self.belgianView = UIView()
        self.belgianView.frame = CGRect(x: 0, y: -self.view.frame.height, width: self.view.frame.width, height: self.view.frame.height)
        
        let belgianFirstView = UIView()
        belgianFirstView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height/3)
        belgianFirstView.backgroundColor = UIColor.black
        
        let belgianSecondView = UIView()
        belgianSecondView.frame = CGRect(x: 0, y: self.view.frame.height/3, width: self.view.frame.width, height: self.view.frame.height/3)
        belgianSecondView.backgroundColor = UIColor.yellow
        
        let belgianThirdView = UIView()
        belgianThirdView.frame = CGRect(x: 0, y: 2 * self.view.frame.height/3, width: self.view.frame.width, height: self.view.frame.height/3)
        belgianThirdView.backgroundColor = UIColor.red
        
        self.belgianView.addSubview(belgianFirstView)
        self.belgianView.addSubview(belgianSecondView)
        self.belgianView.addSubview(belgianThirdView)
        
        
        let gestureSwift2AndHigher = UITapGestureRecognizer(target: self, action:  #selector (self.showOrEraseBelgianFlag))
        
        self.view.addGestureRecognizer(gestureSwift2AndHigher)
        
        self.view.addSubview(self.belgianView)
        
    }
    
    @objc private func showOrEraseBelgianFlag(sender:UITapGestureRecognizer){
        self.isBelgianViewShown = !self.isBelgianViewShown
        if (self.isBelgianViewShown){
            UIView.animate(withDuration: 0.5, animations: {
                self.belgianView.frame.origin.y = 0
            })
        }else{
            UIView.animate(withDuration: 0.5, animations: {
                self.belgianView.frame.origin.y = -self.view.frame.height
            })
        }
    }


}

