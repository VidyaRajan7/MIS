//
//  AppConstants.swift
//  MIS
//
//  Created by Developer Admin on 07/08/20.
//  Copyright © 2020 Developer Admin. All rights reserved.
//

import Foundation
import UIKit

struct StoryboardIdentifier {
    static let mainStoryBoard = "Main"
    static let landingViewController = "LandingViewController"
}

struct CommonStrings {
    static let loginName = "Login"
    static let emptyString = ""
}

struct FontName {
    static let gothamLight = "Gotham Light"
}

struct ImageNames {
    static let backgroundImage = "background"
}

struct DeviceType {
    static let IS_IPHONE_5_OR_LESS = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH <= 568.0
    static let IS_IPAD = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
    static let IS_IPAD_PRO = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1366.0
}

struct ScreenSize {
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}
