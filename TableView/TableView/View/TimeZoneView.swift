//
//  TimeZoneView.swift
//  TableView
//
//  Created by Andrew Ward on 3/2/25.
//

import UIKit

class TimeZoneView: UIViewController {

    @IBOutlet weak var tzLabel: UILabel!
    @IBOutlet weak var utcLabel: UILabel!
    var tz = TimeZone(label: "", utcOffset: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        /*
         Display the TimeZone object on two labels.
         This object is passed via segue from ViewController.
         */
        tzLabel.text = tz.label;
        utcLabel.text = tz.utcOffset;

    }
    
    /*
     Function to handle the press of the Back button
     */
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
