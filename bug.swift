func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        let data = ["data1", "data2", "data3"]
        completion(.success(data))
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