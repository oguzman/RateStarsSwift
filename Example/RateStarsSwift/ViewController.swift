//
//  ViewController.swift
//  RateStarsSwift
//
//  Created by oguzman on 03/21/2016.
//  Copyright (c) 2016 oguzman. All rights reserved.
//

import UIKit
import RateStarsSwift

class ViewController: UIViewController {

    var myRateView: RateView!
    @IBOutlet weak var lblCurrentRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.init(colorLiteralRed: 248/255, green: 72/255, blue: 72/255, alpha: 1)
        myRateView = RateView()
        myRateView.rating = 2
        myRateView.frame = CGRectMake(5, 480, 310, 58)
        lblCurrentRating.text = String(format: "%d", myRateView.rating)
        self.view.addSubview(myRateView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // this way you can access current rating value
    @IBAction func checkMyRate(btn: UIButton)
    {
        lblCurrentRating.text = String(format: "%d", myRateView.rating)
    }

}

