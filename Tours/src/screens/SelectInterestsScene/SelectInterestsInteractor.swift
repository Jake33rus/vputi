//
//  SelectInterestsInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol SelectInterestsBusinessLogic {
  func doSomething(request: SelectInterests.Something.Request)
}

protocol SelectInterestsDataStore {
  //var name: String { get set }
}

final class SelectInterestsInteractor: SelectInterestsBusinessLogic, SelectInterestsDataStore {
  var presenter: SelectInterestsPresentationLogic?
  var worker: SelectInterestsWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: SelectInterests.Something.Request) {
    worker = SelectInterestsWorker()
    worker?.doSomeWork()
    
    let response = SelectInterests.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
