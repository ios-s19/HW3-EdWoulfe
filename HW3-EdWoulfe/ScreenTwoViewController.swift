//
//  ScreenTwoViewController.swift
//  HW3-EdWoulfe
//
//  Created by Woulfe, Edmond   (woulf002) on 3/24/19.
//  Copyright © 2019 Woulfe, Edmond   (woulf002). All rights reserved.
//

//
//  ScreenOneViewController.swift
//  HW3-EdWoulfe
//
//  Created by Woulfe, Edmond   (woulf002) on 3/24/19.
//  Copyright © 2019 Woulfe, Edmond   (woulf002). All rights reserved.
//

import UIKit

class ScreenTwoViewController: UIViewController {
    
    @IBOutlet weak var viewBackground: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define the two colors for the screen, this view will contain green.
        let lightColor = UIColor(red: 0/255, green: 232/255, blue: 0/255, alpha: 1.0)
        let darkColor = UIColor(red: 0/255, green: 97/255, blue: 0/255, alpha: 1.0)
        
        // Create hour variable to determine the time of day.
        let hour = NSCalendar.current.component(.hour, from: NSDate() as Date)

        // Switch statements to decide the color.
        switch hour{
        // From 6PM to Midnight it should be dark.
        case 18...24:
            self.viewBackground.backgroundColor = darkColor
            break
        // From Midnight to 6AM it should be dark.
        case 0...6:
            self.viewBackground.backgroundColor = darkColor
            break
        // Default will just be the default, no need to make another case for 7AM - 5PM.
        default:
            self.viewBackground.backgroundColor = lightColor
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


