//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Melle Meewis on 03/12/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    @IBOutlet weak var dismissOrderButton: UIButton!
    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissOrderButton.layer.cornerRadius = 5.0

        if minutes == 0 {
            timeRemainingLabel.text = "Thank you for your order! Unfortenately the waiting time is unknown"
        }
        else {
            timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."
        }
    }
        
        

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
