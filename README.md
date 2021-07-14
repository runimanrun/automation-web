# Web Automation
Robot Framework is a generic automation framework designed for a great number of applications. It can be used for testing apps (web, mobile, desktop) and much more.

The idea behind this framework is that an automation framework must be operating system and application-independent. This means that you can use it to automate applications on Linux, Windows, Mac, etc. and use libraries written in your favorite programming languages, Python or Java.

Test cases are simple text files with “robot” extension. They can be edited in your favorite IDE (Notepad, PyCharm, etc.). Pycharm with robot plugin is great for writing Robot Framework test cases because it offers syntax highlighting and other cool benefits that help you write the cases.

One of the best features of Robot Framework is that it uses a keyword-driven testing approach, so you don’t have to actually “touch” coding.

This document will help you to setup your mobile automation using Robotframework.

## Prerequisites
This automation script uses a number of open source library to work properly:

### Python
Install [python](https://www.python.org/downloads/) or [python3](https://www.python.org/downloads/) on your machine and verify python installed.
```sh
$ python --version 
$ python3 --version
```
### PIP
Pip is the standard package manager for Python. It allows you to install and manage additional packages that are not part of the Python standard library.to verify pip installed on your machine, type:
```sh
$ pip --version 
$ pip3 --version
```

### Robotframework
Robot Framework is a generic open source automation framework. It can be used for test automation and robotic process automation (RPA).
```sh
$ pip install robotframework
$ pip3 install robotframework
```

### SeleniumLibrary
SeleniumLibrary is a web testing library for Robot Framework.
```sh
$ pip install robotframework-selenium2library
$ pip3 install robotframework-selenium2library
```

### Web Driver
- For google chrome usage download and install web driver in https://chromedriver.chromium.org/downloads
- For mozilla firefox usage download and install web driver in https://github.com/mozilla/geckodriver/releases


## Test Execution
Duplicate file `var.sample` and rename to `var.robot` on the `Variables` directory for changing the test details. `var.robot` consist list of secret and data used for automation.

Once all the steps it complete you can execute this command
```sh
$ robot -d Results Suites/*.robot
```