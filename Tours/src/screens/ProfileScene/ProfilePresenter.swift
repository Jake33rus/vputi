//
//  ProfilePresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol ProfilePresentationLogic {
  func presentSomething(response: Profile.Something.Response)
}

final class ProfilePresenter: ProfilePresentationLogic {
  weak var viewController: ProfileDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Profile.Something.Response) {
    let viewModel = Profile.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
