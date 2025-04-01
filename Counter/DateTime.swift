//
//  DateTime.swift
//  Counter
//
//  Created by Leonid on 01.04.2025.
//

import Foundation
import UIKit

func DateTimeToDay() -> String {
    let currentDate = Date()

    // Создание форматтера для даты и времени
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .full

    // Установка часового пояса в соответствии с настройками устройства
    dateFormatter.timeZone = TimeZone.current

    // Форматирование даты в строку
    let dateString = dateFormatter.string(from: currentDate)
    
    return dateString
}
