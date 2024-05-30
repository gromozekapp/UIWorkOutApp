//
//  DailyPerformanceView.swift
//  WorkOutApps
//
//  Created by Daniil Zolotarev on 18.05.24.
//

import UIKit

final class DailyPerformanceView: WABaseInfoView {
    
    private let barsView = WABarsView()

    func configure(with items: [WABarView.Data]) {
        barsView.configure(with: items)
    }
}

extension DailyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
       setupView(barsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
