//
//  ViewController.swift
//  Tutorial1
//
//  Created by Eduard Zepciuc on 06.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var imageList = [
        #imageLiteral(resourceName: "IMG_2786"),
        #imageLiteral(resourceName: "IMG_3122"),
        #imageLiteral(resourceName: "IMG_3943"),
        #imageLiteral(resourceName: "IMG_3689"),
        #imageLiteral(resourceName: "IMG_3366"),
        #imageLiteral(resourceName: "bautura-energizanta-monster-pacific-punch-05l-5060751211327_1_1000x1000.jpg")
    ]
    

    @IBAction func backButtonPressed(_ sender: UIButton) {
        imageNumber-=1
        if imageNumber < 0 {
            imageNumber = imageList.count-1
        }
            
            imageView.image = imageList[imageNumber]
            
        }
        
        
        @IBAction func nextButtonPressed(_ sender: UIButton) {
            
            imageNumber+=1
            if imageNumber > imageList.count-1 {
                imageNumber = 0
            }
            
            imageView.image = imageList[imageNumber]
            
        }
        
    }

