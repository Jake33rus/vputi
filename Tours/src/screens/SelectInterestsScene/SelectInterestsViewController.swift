//
//  SelectInterestsViewController.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import SnapKit
import UIKit

protocol SelectInterestsDisplayLogic: AnyObject {
    func displaySomething(viewModel: SelectInterests.Something.ViewModel)
}

final class SelectInterestsViewController: UIViewController, SelectInterestsDisplayLogic {

    private var interests: [String] = []

    private let contentView: UIView = {
        let view = UIView().prepareForAutoLayout()
        view.backgroundColor = Colors.greenColor.rawValue
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        return view
    }()

    private let titleView: UILabel = {
        let view = UILabel().prepareForAutoLayout()
        view.contentMode = .center
        view.font = UIFont(descriptor: .preferredFontDescriptor(withTextStyle: .largeTitle), size: 22)
        view.text = "Укажите ваши интересы"
        return view
    }()

    private let buttonView: UIView = {
        let view = UIView().prepareForAutoLayout()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        return view
    }()

    private let button: UIButton = {
        let view = UIButton().prepareForAutoLayout()
        view.backgroundColor = Colors.blueColor.rawValue
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        view.setTitle("Сохранить", for: .normal)
        return view
    }()

    private let collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout).prepareForAutoLayout()
        collectionView.backgroundColor = Colors.greenColor.rawValue
        return collectionView
    }()

    var interactor: SelectInterestsBusinessLogic?
    var router: (SelectInterestsRoutingLogic & SelectInterestsDataPassing)?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        initialize()
        doSomething()
    }

    private func initialize() {
        view.backgroundColor = UIColor.white
        view.addSubview(contentView)
        view.addSubview(titleView)
        titleView.topAnchor ~= view.safeAreaLayoutGuide.topAnchor + 40
        titleView.centerXAnchor ~= view.centerXAnchor
        contentView.pinToSuperview([.left, .right])
        contentView.bottomAnchor ~= view.safeAreaLayoutGuide.bottomAnchor
        contentView.topAnchor ~= titleView.bottomAnchor + 30
        contentView.addSubview(buttonView)
        buttonView.bottomAnchor ~= contentView.bottomAnchor
        buttonView.pinToSuperview([.left, .right])
        buttonView.heightAnchor ~= 80
        buttonView.addSubview(button)
        button.topAnchor ~= buttonView.topAnchor + 12
        button.leadingAnchor ~= buttonView.leadingAnchor + 16
        button.trailingAnchor ~= buttonView.trailingAnchor - 16
        button.bottomAnchor ~= view.safeAreaLayoutGuide.bottomAnchor - 12
        contentView.addSubview(collectionView)
        collectionView.topAnchor ~= contentView.topAnchor + 22
        collectionView.leadingAnchor ~= contentView.leadingAnchor + 22
        collectionView.trailingAnchor ~= contentView.trailingAnchor - 22
        collectionView.bottomAnchor ~= buttonView.topAnchor - 10
    }

    func setupViews() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(
            CheckInterestCellView.self,
            forCellWithReuseIdentifier: CheckInterestCellView.identifier)
    }

    func doSomething() {
        let request = SelectInterests.Something.Request()
        interactor?.doSomething(request: request)
    }

    func displaySomething(viewModel: SelectInterests.Something.ViewModel) {
        interests = viewModel.interests
        collectionView.reloadData()
    }
}

extension SelectInterestsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard
            let cell = collectionView.cellForItem(at: indexPath) as? CheckInterestCellView
        else { return }
        cell.isChecked = !cell.isChecked
    }
}

extension SelectInterestsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CheckInterestCellView.identifier,
            for: indexPath
        ) as? CheckInterestCellView else {
            return UICollectionViewCell(frame: .zero)
        }
        let interest = interests[indexPath.row]
        cell.setup(with: interest)
        return cell
    }
}

extension SelectInterestsViewController: UICollectionViewDelegateFlowLayout {
    private enum LayoutConstant {
        static let spacing: CGFloat = 4.0
        static let itemHeight: CGFloat = 60.0
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        let width = collectionView.frame.width
        return CGSize(width: width, height: LayoutConstant.itemHeight)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return LayoutConstant.spacing
    }
}
