//
//  SectionHeaderView.swift
//  WorkOutApps
//
//  Created by Daniil Zolotarev on 19.05.24.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
    func configure(with date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd"
        
        self.title.text = dateFormatter.string(from: date).uppercased()
    }
}

private extension SectionHeaderView {
    
func setupViews() {
    setupView(title)
}
 func constraintViews() {
    NSLayoutConstraint.activate([
        title.centerXAnchor.constraint(equalTo: centerXAnchor),
        title.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
}
    func configureAppearance() {}
}
