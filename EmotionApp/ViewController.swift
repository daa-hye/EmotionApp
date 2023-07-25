//
//  ViewController.swift
//  EmotionApp
//
//  Created by 박다혜 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var moodImageSet: [UIImageView]!
    @IBOutlet var moodViewSet: [UIView]!

    var clickedCount = [0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUIDesign()
    }

    func setUIDesign() {
        let colorSet: [UIColor] = [
            UIColor.red,
            UIColor.orange,
            UIColor.yellow,
            UIColor.green,
            UIColor.blue
        ]
        for item in moodImageSet {
            item.image = UIImage(named: "emoji\(item.tag)")
        }
        for item in moodViewSet {
            item.backgroundColor = colorSet[item.tag]
        }
    }


}

