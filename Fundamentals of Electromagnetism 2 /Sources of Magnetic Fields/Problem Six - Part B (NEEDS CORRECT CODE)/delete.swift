func uploadPhoto(task: UploadPhotoTask, atStart: Bool) {
    let fileId = task.fileId
    let image = task.image
    let queue = DispatchQueue.global(qos: .background)
    let transport = LollipopApollo.shared.httpNetworkTransport!
    let mutation = UploadMediaMutation(
      file: fileId,
      type: .photo,
      category: .directUpload,
      fileId: fileId,
      atStart: atStart)
    let file = GraphQLFile(
      fieldName: "file",
      originalName: fileId + ".jpg",
      mimeType: "image/jpeg",
      data: image.jpegData(compressionQuality: 0.😎!)
    queue.async {
      let isPhotoSafe = self.validatePhotoSafety(image: image)
      if isPhotoSafe {
        _ = transport.upload(operation: mutation, files: [file]) { result in
          DispatchQueue.main.async {
            NotificationCenter
              .default
              .post(
                name: .MyProfileViewModelNeedsRefresh,
                object: nil)
          }
          
          let userGender = UserDefaults.standard.string(forKey: "v1.userGender") ?? "male"
          if let userId = Session.shared.currentUser?.id {
            if userGender == "male" {
              if #available(iOS 12.0, *) {
                let score = ManImageCategorizer.computeScore(image)
                print("🤖 🙍‍♂️score:", score)
                ManImageCategorizer.uploadScore(userId: userId, photoId: fileId, score: score)
              }
            } else {
              if #available(iOS 12.0, *) {
                let score = WomanImageCategorizer.computeScore(image)
                print("🤖 🙍‍♀️score:", score)
                WomanImageCategorizer.uploadScore(userId: userId, photoId: fileId, score: score)
              }
            }
          } else {
            print("🤖 userId not found")
          }
        }
      }
    }
  }