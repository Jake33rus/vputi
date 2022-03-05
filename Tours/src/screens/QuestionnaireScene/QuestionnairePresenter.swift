//
//  QuestionnairePresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol QuestionnairePresentationLogic {
  func presentSomething(response: Questionnaire.Something.Response)
}

final class QuestionnairePresenter: QuestionnairePresentationLogic {
  weak var viewController: QuestionnaireDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Questionnaire.Something.Response) {
    let viewModel = Questionnaire.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
