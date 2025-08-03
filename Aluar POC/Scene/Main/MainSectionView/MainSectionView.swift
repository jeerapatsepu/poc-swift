//
//  MainSectionView.swift
//  Aluar POC
//
//  Created by Jeerapat Sripumngoen on 2/8/2568 BE.
//

import UIKit

class MainSectionView: UIView {
    @IBOutlet weak var contentView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        Bundle(for: MainSectionView.self).loadNibNamed("MainSectionView", owner: self)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
