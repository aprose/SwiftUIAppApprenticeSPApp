import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
        createDevData()
    }
    
}

extension HistoryStore {
    
    mutating func createDevData() {
        exerciseDays = [
            ExerciseDay(date: Date().addingTimeInterval(-86400), exercises: [
                Exercise.exercise[0].exerciseName,
                Exercise.exercise[1].exerciseName,
                Exercise.exercise[2].exerciseName
            ]),
            ExerciseDay(date: Date().addingTimeInterval(-86400 * 2), exercises: [
                Exercise.exercise[0].exerciseName,
                Exercise.exercise[1].exerciseName
            ])
        ]
    }
}

