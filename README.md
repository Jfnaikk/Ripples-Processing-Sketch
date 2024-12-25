Generative Ripple

Generative Ripple is an interactive visual art project created using the Processing language. The program generates organic, multicolored ripple patterns on a dartboard-like black canvas. The ripples grow dynamically and stay on the screen, offering a mesmerizing visual experience.

Features
The program allows users to create interactive ripple effects by clicking anywhere on the canvas. Each ripple grows dynamically with randomized sizes and speeds, and each is assigned a unique, vibrant color. Users can press the spacebar to save the current screen as a .png file and reset the canvas to start fresh. Additionally, instructions are displayed at the bottom of the screen for ease of interaction.

How to Run
To run the program, first download and install Processing. Clone this repository or download the source code. Open the GenerativeRipple.pde file in the Processing IDE. Run the sketch by clicking the play button in the Processing IDE. Interact with the program by clicking anywhere on the canvas to create ripples. Press the SPACEBAR to save a screenshot and reset the canvas.

File Structure
The project contains the following files:

GenerativeRipple.pde: Main source code.
README.md: Project documentation.
example.png: Example output (optional).
Controls
Click anywhere on the canvas to create a ripple at that location. Press the SPACEBAR to save a screenshot of the current canvas and reset all ripples.

Customization
You can customize various parameters in the code to create a personalized effect. Modify the growthRate parameter in the Ripple class to adjust ripple speed. Change the maxRadius parameter for maximum ripple size. Adjust the canvas dimensions in the size() function of the setup() method. Experiment with the colorMode(HSB) settings in the display() method of the Ripple class to modify the color palette.

Author
This project was created by Jawad F. Naik as part of the course Elements of Media, taught by Professor Fred Wolflink at the Massachusetts College of Art and Design in Boston, Massachusetts, USA.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments
Special thanks to the Processing Foundation for the Processing IDE and creative coding inspiration, and to the Massachusetts College of Art and Design for providing a supportive environment for exploration and creativity.

