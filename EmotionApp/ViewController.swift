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
        moodDidTap(MoodSet.happy.rawValue)
    }
    @IBAction func smileDidTap(_ sender: UITapGestureRecognizer) {
        moodDidTap(MoodSet.smile.rawValue)
    }
    @IBAction func sosoDidTap(_ sender: UITapGestureRecognizer) {
        moodDidTap(MoodSet.soso.rawValue)
    }
    @IBAction func upsetDidTap(_ sender: UITapGestureRecognizer) {
        moodDidTap(MoodSet.upset.rawValue)
    }
    @IBAction func sadDidTap(_ sender: UITapGestureRecognizer) {
        moodDidTap(MoodSet.sad.rawValue)
    }

    func moodDidTap(_ index: Int) {
        let userDefaultsMoodKey: String

        guard let mood = MoodSet(rawValue: index) else { return }

        switch mood {
        case .happy : userDefaultsMoodKey = "happy"
        case .smile : userDefaultsMoodKey = "smile"
        case .soso : userDefaultsMoodKey = "soso"
        case .upset : userDefaultsMoodKey = "upset"
        case .sad : userDefaultsMoodKey = "sad"
        }

        let count = UserDefaults.standard.integer(forKey: userDefaultsMoodKey) + 1

        UserDefaults.standard.set(count,forKey: userDefaultsMoodKey)
        print("\(userDefaultsMoodKey) : \(count)번")
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

