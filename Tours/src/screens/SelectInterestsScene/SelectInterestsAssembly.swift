//
//  SelectInterestsAssembly.swift
//  Tours
//
//  Created by Евгений Уланов on 10.05.2022.
//

import Foundation
import UIKit

final class SelectInterestsAssembly {
    static func build() -> UIViewController {
        let view = SelectInterestsViewController()
        let presenter = SelectInterestsPresenter()
        let interactor = SelectInterestsInteractor()
        presenter.viewController = view
        interactor.presenter = presenter
        view.interactor = interactor
        return view
    }
}
