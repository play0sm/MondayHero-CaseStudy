# MondayHero Case Study 

## Table of Contents

- [Install Windows](#install-windows)
- [Install macOS](#install-macos)
- [Install Android Studio](#install-android-studio)
- [Set up your VS Code](#set-up-your-vs-code)
- [Install Dependencies](#install-dependencies)
- [Run App](#run-app)

## Install Windows

Download the following installation bundle to get the latest stable release of the Flutter SDK:

[Download Flutter Windows](https://flutter.dev/docs/get-started/install/windows)

Extract the zip file and place the contained flutter in the desired installation location for the Flutter SDK (for example, C:\src\flutter; do not install Flutter in a directory like C:\Program Files\ that requires elevated privileges).

You are now ready to run Flutter commands in the Flutter Console!

#### Update your Path

Under User variables check if there is an entry called Path:

- If the entry exists, append the full path to flutter\bin using ; as a separator from existing values.
- If the entry doesn’t exist, create a new user variable named Path with the full path to flutter\bin as its value.

---

## Install macOS

Download the following installation bundle to get the latest stable release of the Flutter SDK:

[Download Flutter macOS](https://flutter.dev/docs/get-started/install/macos)

You are now ready to run Flutter commands in the Flutter Console!

---

## Install Android Studio

Android Studio offers a complete, integrated IDE experience for Flutter.

[Android Studio](https://developer.android.com/studio), version 3.0 or later

#### Install the Flutter and Dart plugins

#### To install these:

- Start Android Studio.
- Open plugin preferences (Preferences > Plugins on macOS, File > Settings > Plugins on Windows & Linux).
- Select Marketplace, select the Flutter plugin and click Install.
- Click Yes when prompted to install the Dart plugin.
- Click Restart when prompted.

#### Set up your Android device

To prepare to run and test your Flutter app on an Android device, you’ll need an Android device running Android 4.1 (API level 16) or higher.

- Enable Developer options and USB debugging on your device. Detailed instructions are available in the Android documentation.
- Windows-only: Install the Google USB Driver.
- Using a USB cable, plug your phone into your computer. If prompted on your device, authorize your computer to access your device.
- In the terminal, run the flutter devices command to verify that Flutter recognizes your connected Android device. By default, Flutter uses the version of the Android SDK where your adb tool is based. If you want Flutter to use a different installation of the Android SDK, you must set the ANDROID_HOME environment variable to that installation directory.

---

## Set up your VS Code

- Install the Flutter and Dart plugins
- Start VS Code.
- Invoke View > Command Palette….
- Type “install”, and select Extensions: Install Extensions.
- Type “flutter” in the extensions search field, select Flutter in the list, and click Install. This also installs the required Dart plugin.

#### Validate your setup with the Flutter Doctor

- Invoke View > Command Palette….
- Type “doctor”, and select the Flutter: Run Flutter Doctor.
- Review the output in the OUTPUT pane for any issues.

---

### Install Dependencies

```
flutter pub get
```

### Run App

- Check that an Android device is running. If none are shown, follow the device-specific instructions on the Install page for your OS.

```
flutter devices
```

> You must have your device or simulator before doing this.

- Run the app with the following command:

```
flutter run
```
### Hot Reload

- Save your changes.
- Type " r " in the terminal window