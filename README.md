

<!-- Repository Information & Links-->
<br />

![GitHub repo size](https://img.shields.io/github/repo-size/Tsebo200/Pacualtor)
![GitHub watchers](https://img.shields.io/github/watchers/Tsebo200/Pacualtor)
![GitHub language count](https://img.shields.io/github/languages/count/Tsebo200/Pacualtor)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Tsebo200/Pacualtor)
![Github Language](https://img.shields.io/github/languages/top/Tsebo200/Pacualtor)
![Github Downloads](https://img.shields.io/github/downloads/Tsebo200/Pacualtor/total)
<!-- ![Github node Version](https://img.shields.io/node/v/Paculator) -->


<!-- HEADER SECTION -->
<h5 align="center" style="padding:0;margin:0;">Tsebo Ramonyalioa</h5>
<h5 align="center" style="padding:0;margin:0;">200200</h5>
<h6 align="center">DV202 - Term 2 | 2022</h6>
<h6 align="center">Unit Testing</h6>
</br>
<p align="center">

  <a href="https://github.com/Tsebo200/Paculator">
    <img src="src/assets/Logo.svg" align="center" alt="../src/Assets/Logo\ 2.png" width="140" height="140">
  </a>
  
  <h3 align="center">Paculator</h3>

  <p align="center">
    A react project to manage breadwinners earnings while unit testing all the functions<br>
    
   <br />
   <br />
   <a href="https://drive.google.com/file/d/1gY-Q5ua-iswJ4MdF9xmGJ-9F9rR-bsMO/view?usp=sharing">View Demo</a>
    ·
    <a href="https://github.com/Tsebo200/Paculator/issues">Report Bug</a>
    ·
    <a href="https://github.com/Tsebo200/Paculator/issues">Request Feature</a>
</p>
<!-- TABLE OF CONTENTS -->

## Table of Contents

* [About the Project](#about-the-project)
  * [Project Description](#project-description)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [How to install](#how-to-install)
* [Features and Functionality](#features-and-functionality)
* [Concept Process](#concept-process)
   * [Ideation](#ideation)
   * [Wireframes](#wireframes)
   * [Custom UI](#user-flow)
* [Development Process](#development-process)
   * [Implementation Process](#implementation-process)
        * [Highlights](#highlights)
        * [Challenges](#challenges)
   * [Future Implementation](#peer-reviews)
* [Final Outcome](#final-outcome)
    * [Mockups](#mockups)
    * [Video Demonstration](#video-demonstration)
* [Conclusion](#conclusion)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!--PROJECT DESCRIPTION-->


### Project Description

My Project is a budget calculator, that calculates breadwinners earnings. The breadwinner can manage their taxes, monthly expenses as well as their savings. 

### Built With

* [React](https://reactjs.org/)
* [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/)


<!-- GETTING STARTED -->
<!-- Make sure to add appropriate information about what prerequesite technologies the user would need and also the steps to install your project on their own machines -->
## Getting Started

The following instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ensure that you have the latest version of [NPM](https://www.npmjs.com/) installed on your machine. The [GitHub Desktop](https://desktop.github.com/) program will also be required. 

### How to install

### Installation
Here are a couple of ways to clone this repo:

1. GitHub Desktop </br>
Enter `https://github.com/Tsebo200/Paculator.git` into the URL field and press the `Clone` button.

2. Clone Repository </br>
Run the following in the command-line to clone the project:
   ```sh
   git clone https://github.com/Tsebo200/Paculator.git
   ```
    Open `Software` and select `File | Open...` from the menu. Select cloned directory and press `Open` button

3. Install Dependencies </br>
Run the following in the command-line to install all the required dependencies:
   ```sh
   npm install
   ```

<!-- FEATURES AND FUNCTIONALITY-->
<!-- You can add the links to all of your imagery at the bottom of the file as references -->
## Features and Functionality

<!-- note how you can use your gitHub link. Just make a path to your assets folder -->
### Feature 
Once this button is clicked tax will be calculated and subtracted from your earnings on top of that your tax bracket will be displayed under your name in the income after tax container.<br>

![image1](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/ButtonImg.png)


### Functionality 
This functionality shows the percentage of the contributed amount in the household. The more you have contributed the higher the percent you own of the Net Income. <br>
![image2](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/TotalNetIncome.png)


Now since in this case Elon Musk owns 100% of the Net Income, he also owns the savings amount.
![image3](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/AmountLeftOver.png)

<br>

<!-- CONCEPT PROCESS -->
<!-- Briefly explain your concept ideation process -->
<!-- here you will add things like wireframing, data structure planning, anything that shows your process. You need to include images-->
## Concept Process

The `Conceptual Process` is the set of actions, activities and research that was done when starting this project. As part of my conceptual process I have sketched wireframes in Figma, I looked at Pinterest for inspiration. I planned out my functionality by doing unit tests.
<br>

### Ideation
This was my main look and feel. As I wanted to utilise the skeuomorphic design.
<img src="src/assets/SceumorphicUI.jpeg" align="center">
<br>

### Wireframes
This is my first phase
<img src="src/assets/WireOne.jpg" align="center"><br>

<img src="src/assets/WireFour.jpg" align="center"><br>

<img src="src/assets/WireThree.jpg" align="center"><br>

<img src="src/assets/WireTwo.jpg" align="center">

### Custom UI
This is the active state of my button
<img src="src/assets/Sufferbtn.png" align="center">
<br>

This is the hover state of my button
<img src="src/assets/Sufferbtnhover.png" align="center">
<br>

This is the skeuomorphic design on one of my component containers
<img src="src/assets/AmountLeftUI.png" align="center">

<!-- DEVELOPMENT PROCESS -->
## Development Process

The `Development Process` is the technical implementations and functionality done in the frontend and backend of the application. 
In my frontend I implemented a Google Font called Inter, a box shadow on different sections (content-containers), I added Hover States for my buttons.
<br>In my backend I utilised React js with Vanilla JavaScript whilst testing my functions all in RTL(React Testing Library).

### Implementation Process
<!-- stipulate all of the functionality you included in the project -->
<!-- This is your time to shine, explain the technical nuances of your project, how did you achieve the final outcome!-->

* Utilized React `RTL` dependency for Data visualization
* Implemented Routing with `React-Router v6`.
* Wrote With Vanilla JavaScript

#### Highlights
<!-- stipulated the highlight you experienced with the project -->
* I enjoyed this brief as there was room to explore and create something you really wanted in terms of UI/UX. 
* I mostly enjoyed designing and developing the front-end.

#### Challenges
<!-- stipulated the challenges you faced with the project and why you think you faced it or how you think you'll solve it (if not solved) -->
* It took me a while to realise this, but I was supposed to add a return after a const variable in order for the information to be passed over to the next const. I spend around 2 - 3 hours debugging this Nan response.


#### Above And Beyond

What aspects of this final build contribute to the `Above And Beyond` Component of your brief?
<!-- what did you learn outside of the classroom and implement into your project-->
* Refactoring
* I learnt how to add more than one const variable inside of an Onclick event, now I can even apply this to other events such as onChange and onHover etc.
<br>

* Front End Design Exploration
* I learnt about a design trend named skeuomorphism and I was able to apply it to my front-end.

### Future Implementation
<!-- stipulate functionality and improvements that can be implemented in the future. -->

* I will learn more about RTL in order to write more complex Tests.


<!-- MOCKUPS -->
## Final Outcome

### Mockups

![image12](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/MockOne.png)

<br>

![image13](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/MockTwo.png)

<br>

![image13](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/MockThree.png)

<br>

![image14](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/MockFour.png)

<br>

![image15](https://github.com/Tsebo200/Pacualtor/blob/main/src/assets/MockFive.png)

<br>

<!-- VIDEO DEMONSTRATION -->
### Video Demonstration

To see a run through of the application, click below:

[View Demonstration](https://drive.google.com/file/d/1gY-Q5ua-iswJ4MdF9xmGJ-9F9rR-bsMO/view?usp=sharing)


See the [open issues](https://github.com/Tsebo200/Paculator/issues) for a list of proposed features (and known issues).

<!-- AUTHORS -->
## Authors

* **Tsebo Ramonyalioa** - [Tsebo200](https://github.com/Tsebo200)

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.\

<!-- LICENSE -->
## Contact

* **Tsebo Ramonyalioa** - [email@address](mailto:200200@virtualwidnow.co.za) - [@instagram_handle](https://www.instagram.com/inspiration200200/) 
* **Project Link** - https://github.com/Tsebo200/Pacualtor

<!-- ACKNOWLEDGEMENTS -->

<!-- all resources that you used and Acknowledgements here -->



