//
//  ProgressController.swift
//  WorkOutApps
//
//  Created by Daniil Zolotarev on 3.05.24.
//

import UIKit

class ProgressController: WABaseController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: R.Strings.Progress.dailyPerformance,
                                                            buttonTitle: R.Strings.Progress.last7Days)
    private let mounthlyPerformanceView = MonthlyPerformanceView(with: R.Strings.Progress.monthlyPerformance,
                                                            buttonTitle: R.Strings.Progress.last10Months)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProgressController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
        view.setupView(mounthlyPerformanceView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            mounthlyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            mounthlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            mounthlyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            mounthlyPerformanceView.heightAnchor.constraint(equalTo: mounthlyPerformanceView.widthAnchor, multiplier: 1.06)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    
        title = R.Strings.TabBar.title(for: .progress)
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .rigth, with: R.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [.init(value: "1", heightMultiplayer: 0.2, title: "Mon"),
                                              .init(value: "2", heightMultiplayer: 0.4, title: "Teu"),
                                              .init(value: "3", heightMultiplayer: 0.6, title: "Wen"),
                                              .init(value: "4", heightMultiplayer: 0.8, title: "Thu"),
                                              .init(value: "5", heightMultiplayer: 1, title: "Fri"),
                                              .init(value: "3", heightMultiplayer: 0.6, title: "Sat"),
                                              .init(value: "2", heightMultiplayer: 0.4, title: "Sun")])
        
        mounthlyPerformanceView.configure(with: [.init(value: 45, title: "Mar"),
                                                .init(value: 55, title: "Apr"),
                                                .init(value: 60, title: "May"),
                                                .init(value: 65, title: "Jun"),
                                                .init(value: 70, title: "Jul"),
                                                .init(value: 80, title: "Aug"),
                                                .init(value: 65, title: "Sep"),
                                                .init(value: 45, title: "Oct"),
                                                .init(value: 30, title: "Nov"),
                                                .init(value: 15, title: "Dec")],
                                          topChartOffset: 10)
    }
}
