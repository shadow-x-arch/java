
Web App Collection for javascritp 
This project is a collection of five web applications built using HTML, CSS, and JavaScript. Each application is placed in its own directory with individual CSS, HTML, and JavaScript files.

Sub-Apps
Calculator

A simple calculator that performs basic arithmetic operations.
Directory: /calculator
Digital Clock

A live digital clock displaying current time in hours, minutes, and seconds.
Directory: /digital-clock
This app includes a Jest test file for basic functionality testing.
Rock-Paper-Scissors

A game where you can play Rock, Paper, Scissors against the computer.
Directory: /rock-paper-scissors
Stopwatch

A stopwatch to track time with start, stop, and reset functionality.
Directory: /stopwatch
Weather App

A weather app that shows current weather conditions based on your input location using an API.
Directory: /weather-app
Getting Started
Prerequisites
A modern web browser (Chrome, Firefox, Safari, etc.)
(Optional) A code editor like Visual Studio Code for easy editing of files.
Node.js installed for running Jest tests (only required for Digital Clock app).
Installation


File Structure
bash
Copy code
web-app-collection/
│
├── calculator/
│   ├── index.html
│   ├── style.css
│   └── script.js
│
├── digital-clock/
│   ├── index.html
│   ├── style.css
│   ├── script.js
│   └── clock.test.js  # Jest test file for Digital Clock app
│
├── rock-paper-scissors/
│   ├── index.html
│   ├── style.css
│   └── script.js
│
├── stopwatch/
│   ├── index.html
│   ├── style.css
│   └── script.js
│
└── weather-app/
    ├── index.html
    ├── style.css
    └── script.js
Usage
You can run each app by opening index.html from root directory file in a browser. The apps are standalone, and each has its own set of functionalities:

The Calculator allows basic arithmetic operations.
The Digital Clock displays real-time clock data. It also has a Jest test file (clock.test.js) for simple functionality testing.
Rock-Paper-Scissors is a game against the computer.
The Stopwatch tracks elapsed time.
The Weather App fetches and displays weather data based on your input and shows current weather conditions using an API.
only digital clock has a test file ( i used jest for testing functionalities) to run test 
Navigate to the digital-clock directory:

bash
Copy code
cd web-app-collection/digital-clock
Install Jest if you haven't already:

bash
Copy code
npm install --save-dev jest
Run the tests:

bash
Copy code
npx jest
Contributing
Feel free to fork this repository and submit pull requests if you have suggestions or improvements!

License
This project is open source and available under the MIT License.

