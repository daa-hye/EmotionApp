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
        clickedCount[MoodSet.happy.rawValue] += 1
        print(clickedCount[MoodSet.happy.rawValue])
    }
    @IBAction func smileDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[MoodSet.smile.rawValue] += 1
        print(clickedCount[MoodSet.smile.rawValue])
    }
    @IBAction func sosoDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[MoodSet.soso.rawValue] += 1
        print(clickedCount[MoodSet.soso.rawValue])
    }
    @IBAction func upsetDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[MoodSet.upset.rawValue] += 1
        print(clickedCount[MoodSet.upset.rawValue])
    }
    @IBAction func sadDidTap(_ sender: UITapGestureRecognizer) {
        clickedCount[MoodSet.sad.rawValue] += 1
        print(clickedCount[MoodSet.sad.rawValue])
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

