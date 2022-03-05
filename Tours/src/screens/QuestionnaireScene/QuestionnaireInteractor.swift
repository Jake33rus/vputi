//
//  QuestionnaireInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol QuestionnaireBusinessLogic {
  func doSomething(request: Questionnaire.Something.Request)
}

protocol QuestionnaireDataStore {
  //var name: String { get set }
}

final class QuestionnaireInteractor: QuestionnaireBusinessLogic, QuestionnaireDataStore {
  var presenter: QuestionnairePresentationLogic?
  var worker: QuestionnaireWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Questionnaire.Something.Request) {
    worker = QuestionnaireWorker()
    worker?.doSomeWork()
    
    let response = Questionnaire.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
