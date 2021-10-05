//
//  MealsView.swift
//  DaisyDemo
//
//  Created by Ehsan Zilaei on 2021-10-05.
//

import SwiftUI
import Combine
import Meals

public class MyMealService: MealService {
    public func fetchMealsPublisher() -> AnyPublisher<[Meal], Error> {
        let subject = PassthroughSubject<[Meal], Error>()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            subject.send(Meals.previewData)
        }
        return subject.eraseToAnyPublisher()
    }
}

class StateManager: ObservableObject {
    var meals: Meals
    
    init() {
        meals = Meals(service: MyMealService(), fetchAutomatically: true, previewData: ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1")
    }
}

struct ListOfMealsView: View {
    @EnvironmentObject var meals: Meals
    @State var mealItems = [Meal]()
    
    var body: some View {
        List {
            Section(header: Text("Todays meals")) {
                ForEach(mealItems) { meal in
                    VStack(alignment: .leading) {
                        Text(meal.title ?? meal.occasion.rawValue).bold()
                        Text(meal.description)
                    }.frame(maxWidth:.infinity,alignment:.leading)
                }
            }
        }
        .onReceive(meals.publisher()) { featchedMeals in
            mealItems = featchedMeals
        }
    }
}

struct MealsView: View {
    @StateObject var appState = StateManager()
    
    var body: some View {
        ListOfMealsView().environmentObject(appState.meals)
    }
}
