//
//  AddCityPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AddCityPresentationLogic {
  func presentData(response: AddCity.Model.Response.ResponseType)
}

class AddCityPresenter: AddCityPresentationLogic {
  weak var viewController: AddCityDisplayLogic?
  
  func presentData(response: AddCity.Model.Response.ResponseType) {
  
  }
  
}
