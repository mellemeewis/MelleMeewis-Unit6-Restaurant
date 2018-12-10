//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Melle Meewis on 03/12/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemDetailLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    
    @IBAction func addToOrderButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
        self.addToOrderButton.transform =
            CGAffineTransform(scaleX: 2.0, y: 2.0)
        self.addToOrderButton.transform =
            CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        
        MenuController.shared.order.menuItems.append(menuItem)
    }
    
    var menuItem: MenuItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        addToOrderButton.layer.cornerRadius = 5.0
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        itemDetailLabel.text = menuItem.detailText
        MenuController.shared.fetchImage(url: menuItem.imageURL)
        { (image) in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.imageView.image = image
            }
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
