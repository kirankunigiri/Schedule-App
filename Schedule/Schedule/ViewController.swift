//
//  ViewController.swift
//  Schedule
//
//  Created by Kiran Kunigiri on 8/13/17.
//  Copyright © 2017 Kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var scheduleImageView: UIImageView!
    
    
    
    // MARK: - Logic
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todayDate = Date()
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        let myComponents = myCalendar.components(.weekday, from: todayDate)
        let weekDay = myComponents.weekday!
        if weekDay == 1 || weekDay == 7 {
            scheduleImageView.image = UIImage(named: "noSchool")
        } else {
            scheduleImageView.image = UIImage(named: "\(weekDay)")
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

}

