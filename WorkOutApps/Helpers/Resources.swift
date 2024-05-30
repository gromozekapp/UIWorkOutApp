//
//  Resources.swift
//  WorkOutApps
//
//  Created by Daniil Zolotarev on 3.05.24.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let background = UIColor(hexString: "#E8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondaruy = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")  
        static let subtitleGray = UIColor(hexString: "#D8D8D8")  
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: "OverView"
                case .session: "Session"
                case .progress: "Progress"
                case .settings: "Settings"
                }
            }
        }
        
        enum NavBar {
            static var overview = "Today"
            static var session = "Hight Intensity Cardio"
            static var progress = "Workout Progress"
            static var settings = "Settings"
        }
        
        enum Overview {
            static var allWoorcoutsButton = "All Workouts"
        }
        
        enum Session {
            static var navBarStart = "Start   "
            static var navBarPause = "Pause"
            static var navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed time"
            static let remainingTime = "Remaining Time"
            static let completed = "Completed"
            static let remaining = "Remaining"
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"

            static let stepsCounter = "Steps Counter"
        }
        
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
            
            static let dailyPerformance = "Daily performance"
            static let last7Days = "Last 7 days"
            static let monthlyPerformance = "Monthly performance"
            static let last10Months = "Last 10 months"
        }
        
        enum Settings {}
    }
        
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: UIImage(named: "overview_tab")
                case .session: UIImage(named: "session_tab")
                case .progress: UIImage(named: "progress_tab")
                case .settings: UIImage(named: "settings_tab")
                }
            }
        }
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "add_button")
        }
        
        enum Overview {
            static let checkmarkNotDone = UIImage(named: "checkmark_not_done")
            static let checkmarkDone = UIImage(named: "checkmark_done")
            static let rightArrow = UIImage(named: "right_arrow")
        }

        enum Session {
            enum Stats {
                static let averagePace = UIImage(named: "stats_averagePace")
                static let heartRate = UIImage(named: "stats_heartRate")
                static let totalDistance = UIImage(named: "stats_totalDistance")
                static let totalSteps = UIImage(named: "stats_totalSteps")
            }
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
