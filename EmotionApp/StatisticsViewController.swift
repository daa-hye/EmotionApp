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

    override func viewDidAppear(_ animated: Bool) {
        loadData()
    }

    //let moodText = ["happy", "smile", "soso", "upset", "sad"]

    func loadData() {
        for i in 0..<moodCountLabelSet.count {
            let userDefaultsMoodKey: String
            guard let mood = MoodSet(rawValue: i) else { return }

            switch mood {
            case .happy : userDefaultsMoodKey = MoodSet.happy.moodEng
            case .smile : userDefaultsMoodKey = MoodSet.smile.moodEng
            case .soso : userDefaultsMoodKey = MoodSet.soso.moodEng
            case .upset : userDefaultsMoodKey = MoodSet.upset.moodEng
            case .sad : userDefaultsMoodKey = MoodSet.sad.moodEng
            }

            moodCountLabelSet[i].text = "\(UserDefaults.standard.integer(forKey: userDefaultsMoodKey))번"
        }
    }

    @IBAction func resetButtonDidTap(_ sender: UIButton) {
        UserDefaults.standard.set(0, forKey: MoodSet.happy.moodEng)
        UserDefaults.standard.set(0, forKey: MoodSet.smile.moodEng)
        UserDefaults.standard.set(0, forKey: MoodSet.soso.moodEng)
        UserDefaults.standard.set(0, forKey: MoodSet.upset.moodEng)
        UserDefaults.standard.set(0, forKey: MoodSet.happy.moodEng)
        loadData()
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
