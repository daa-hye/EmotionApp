//
//  MoodEnum.swift
//  EmotionApp
//
//  Created by 박다혜 on 2023/07/25.
//

import Foundation

enum MoodSet: Int {
    case happy
    case smile
    case soso
    case upset
    case sad

    var moodEng: String {
        switch self {
        case .happy:
            return "happy"
        case .smile:
            return "smile"
        case .soso:
            return "soso"
        case .upset:
            return "upset"
        case .sad:
            return "sad"
        }
    }

    var moodKor: String {
        switch self {
        case .happy:
            return "완전행복지수"
        case .smile:
            return "적당미소지수"
        case .soso:
            return "그냥그냥지수"
        case .upset:
            return "좀속상한지수"
        case .sad:
            return "많이슬픈지수"
        }
    }

}
