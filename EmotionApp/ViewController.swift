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
        guard let mood = MoodSet(rawValue: index) else { return }
        let userDefaultsMoodKey = mood.moodEng
        let count = UserDefaults.standard.integer(forKey: userDefaultsMoodKey) + 1

        UserDefaults.standard.set(count,forKey: userDefaultsMoodKey)
        print("\(userDefaultsMoodKey) : \(count)번")
    }

    func setUIDesign() {
        let colorSet: [UIColor] = [
            UIColor(red: 248/255, green: 106/255, blue: 140/255, alpha: 1),
            UIColor(red: 248/255, green: 219/255, blue: 136/255, alpha: 1),
            UIColor(red: 248/255, green: 249/255, blue: 173/255, alpha: 1),
            UIColor(red: 171/255, green: 240/255, blue: 225/255, alpha: 1),
            UIColor(red: 47/255, green: 103/255, blue: 154/255, alpha: 1)
        ]
        for item in moodImageSet {
            item.image = UIImage(named: "emoji\(item.tag)")
        }
        for item in moodViewSet {
            item.backgroundColor = colorSet[item.tag]
        }
    }

}

