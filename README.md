### README for ThreadAppClone

## Introduction
ThreadAppClone is a Swift-based application that leverages Firebase for backend services and Kingfisher for efficient image loading. The app utilizes threading to ensure smooth data uploads and seamless user experience.

## Prerequisites
- Xcode
- CocoaPods
- Firebase account

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Vivek09Chahal/ThreadAppClone.git
   cd ThreadAppClone
   ```

2. Install dependencies:
   ```bash
   pod install
   ```

3. Configure Firebase:
   - Go to the Firebase Console and create a new project.
   - Add an iOS app to your project and follow the instructions to download the `GoogleService-Info.plist` file.
   - Place the `GoogleService-Info.plist` file in your Xcode project.

## Usage

1. Open `ThreadAppClone.xcworkspace` in Xcode.
2. Build and run the project on your device or simulator.
3. The app will allow you to upload data smoothly using threading, ensuring a responsive user interface.

## Key Features

- **Firebase Integration**: Utilizes Firebase for authentication, database, and storage.
- **Kingfisher**: Efficiently loads images from the web.
- **Threading**: Ensures smooth and responsive data uploads.
- **Cache**: Same image need note to download again and again due to the cache feature of Kingfisher package

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.
