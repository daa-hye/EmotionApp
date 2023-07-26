//
//  StatisticsViewController.swift
//  EmotionApp
//
//  Created by 박다혜 on 2023/07/25.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet var moodLabelSet: [UILabel]!
    @IBOutlet var moodCountLabelSet: [UILabel]!
    @IBOutlet var backgroundSet: [UIView]!

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

        let moodSet = [ "완전행복지수", "적당미소지수", "그냥그냥지수", "좀속상한지수", "많이슬픈지수"]

        for item in moodLabelSet {
            item.text = moodSet[item.tag]
        }

        for item in backgroundSet {
            item.backgroundColor = colorSet[item.tag]
            item.layer.cornerRadius = 20
        }
    }
}
