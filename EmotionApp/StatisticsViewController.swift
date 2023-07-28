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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }

    func loadData() {
        for i in 0..<moodCountLabelSet.count {
            //let userDefaultsMoodKey: String
            guard let mood = MoodSet(rawValue: i) else { return }
            let userDefaultsMoodKey = mood.moodEng

            moodCountLabelSet[i].text = "\(UserDefaults.standard.integer(forKey: userDefaultsMoodKey))번"
        }
    }

    @IBAction func resetButtonDidTap(_ sender: UIButton) {
        for i in 0..<MoodSet.allCases.count {
            guard let mood = MoodSet(rawValue: i) else { return }
            UserDefaults.standard.set(0, forKey: mood.moodEng)
        }
        loadData()
    }


    func setUIDesign() {
        let colorSet: [UIColor] = [
            UIColor(red: 248/255, green: 106/255, blue: 140/255, alpha: 1),
            UIColor(red: 248/255, green: 219/255, blue: 136/255, alpha: 1),
            UIColor(red: 248/255, green: 249/255, blue: 173/255, alpha: 1),
            UIColor(red: 171/255, green: 240/255, blue: 225/255, alpha: 1),
            UIColor(red: 47/255, green: 103/255, blue: 154/255, alpha: 1)
        ]

        for i in 0..<moodLabelSet.count {
            guard let mood = MoodSet(rawValue: i) else { return }
            moodLabelSet[i].text = mood.moodKor
        }

        for item in backgroundSet {
            item.backgroundColor = colorSet[item.tag]
            item.layer.cornerRadius = 20
        }


    }
}
