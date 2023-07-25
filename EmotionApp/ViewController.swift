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
    @IBOutlet var happyButton: UIButton!

    var clickedCount = [0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUIDesign()
    }

    @IBAction func happyDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[0] += 1
        print(clickedCount[0])
    }
    @IBAction func smileDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[1] += 1
        print(clickedCount[1])
    }
    @IBAction func sosoDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[2] += 1
        print(clickedCount[2])
    }
    @IBAction func upsetDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[3] += 1
        print(clickedCount[3])
    }
    @IBAction func sadDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[4] += 1
        print(clickedCount[4])
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

