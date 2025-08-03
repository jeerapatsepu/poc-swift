//
//  ViewController.swift
//  Aluar POC
//
//  Created by Jeerapat Sripumngoen on 2/8/2568 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    private let viewModel = MainViewModel()
    private var contentList: [MainModels.ViewType] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        contentList = viewModel.getContentList()
        tableView.reloadData()
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.rowHeight = UITableView.automaticDimension
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if case let .header(title, _) = contentList[section] {
            let headerView = UIView()
            headerView.backgroundColor = .blue
            let titleLabel = UILabel()
            titleLabel.text = title
            titleLabel.textColor = .white
            titleLabel.font = .systemFont(ofSize: 16.0)
            titleLabel.numberOfLines = 0
            headerView.addSubview(titleLabel)
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 8.0),
                titleLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16.0),
                titleLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 8.0),
                titleLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: 16.0),
            ])
            return headerView
        }
        return nil
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if case let .header(title, _) = contentList[section] {
            let screenWidth = getScreenWidth()
            let width = screenWidth - 32.0
            return title.height(withConstrainedWidth: width, font: .systemFont(ofSize: 16.0)) + 16.0
        }
        return 0.0
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return contentList.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if case let .header(_, contents) = contentList[section] {
            return contents.count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if case let .header(_, contents) = contentList[indexPath.section] {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
            cell.textLabel?.text = contents[indexPath.row].title
            return cell
        }
        return UITableViewCell()
    }
}
