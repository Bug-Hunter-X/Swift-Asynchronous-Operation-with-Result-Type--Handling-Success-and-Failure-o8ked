func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        do {
            // Simulate potential error
            let randomNumber = Int.random(in: 0...2)
            if randomNumber == 0 {
                throw NSError(domain: "SimulatedNetworkError", code: 1, userInfo: nil)
            }
            let data = ["data1", "data2", "data3"]
            completion(.success(data))
        } catch {
            completion(.failure(error))
        }
    }
}

fetchData { result in
    switch result {
    case .success(let data):
        print("Success: "
              + data.joined(separator: ", "))
    case .failure(let error):
        print("Error: "
              + error.localizedDescription)
    }
} 