# ATM Machine
A virtual ATM Machine that is created with Ruby. The ATM will take in a text file of users containing their name, their pin, and the amount of money they have. The ATM then wil ask for input from the user for their pin and name and will check for that user and offer some options like deposits, withdraws, quickcash, and the option to exit.
## Setup
Setup starts with cloning the repository for ATM_Machine. 
If you have never used GitBash before it's quite simple
We're going to make a repository for ATM by copying this into the console
```sh
$ git clone https://github.com/mmish321/ATM-Machine.git
```
This will clone the code of ATM onto your device.

Now we need to enter the repository by
```sh
$ cd ATM-Machine
```
Now we are inside the folder ATM-Machine and can run the program!

To run type into the console
```sh
$ ruby main.rb
```
This will run the main.rb file which will start the program on your console!


If you would like to see all of the files simply type
```sh
$ subl .
```
This will open up all the files and code in sublime text.
### Questions
* How are the GUI and Adaptor supposed to work with the code? Like how are they set up so that the code can run with GOSU on a window ?
* What is the difference between attr_accessor and attr_reader when you create an object? Also how do you have an object call a method on another one of its methods ? Is it self ?
* When pushing an object into an array, are the properties of those objects seperate in the array or is the entire object, 1 element of the array? 
    

    ```sh
    array = [(Jim,2014,12333333), (Mary,1234,123211)]
    array = [Jim,2014,121333,Mary,1234,12321321321]
    ```




