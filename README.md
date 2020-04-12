![rokuLogo](images/roku_Readme.svg)

# ROKU Flashback Assignment


## Description
An audio and video app that uses queries and database assets. The user will be able to login and select either a parent section or a kids section, each with a unique theme. The sections will require a password. Content will be organized. The goal is to Create a fully responsive web application concept similar to Netflix using the Roku brand. The name of this concept is 'RokuFlashback' to represent how this application will bring you back in time by offering classic movies, shows and music of past decades.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have the following programs installed: 

* MAMP/ WAMP

### Installing

1 - Open up your termial and copy the following below and place the project it into your 'htdocs'/'WWW' folder inside of MAMP/WAMP application. This will download the project to your computer. 


```
$ cd /Applications/MAMP/htdocs
```

```
$ git clone https://github.com/DerrikC/Roku_Vue.git
```


2 - To see dynamic content you need to install the .sql file from the 'db' folder, this can be done in the Terminal or through phpMyAdmin. Create a new database and name it 'db_movies_roku_testing' and then import the .sql file into the empty database. 


### Deployment


Now after you have installed the project and imported the .sql file to your MAMP/WAMP server, you can open up the broswer of your choice and go live (http://localhost:8888/Roku_Vue/).

## User Logins

username: Picasso
password: password

username: KID
password: password

## Development

If you wish to contibute to this project, please feel free to add new updates or fixes that you see fit. Please follow the proper naming convention of branches '(dev/des).(Your Initials).(Job Completed)'. This project is built with [Sass](https://sass-lang.com/), so you will need to connect the Sass to the CSS. To do so, copy and paste the following into the project terminal window.


```
$ sass --watch sass:css --style compressed
```

You can now make Sass changes that will be applied to the main css file. 


## Built With

* HTML5 - Layout
* CSS3 - Styling
* [Vue.js](https://vuejs.org/) - Js component
* [PHP](https://www.php.net/) - Admin & Data
* [Sass](https://sass-lang.com/) - CSS compiler
* [Gulp](https://gulpjs.com/) - Js Enhancement
* [MySQL](https://www.mysql.com/) - Database  

## Authors

* **Derrik Campbell** - [Fanshawe College](https://github.com/DerrikC)
* **Graham Vickers**  - [Fanshawe College](https://github.com/grahamvickers)
  
## Browser Capability 

* Chrome - 100%
* Firefox - 100%
* Safari - [under construction]
* IE - Unknown

## Version History

* 0.1
    * Initial Release
    
## License

MIT

## Acknowledgments


Code Support: 
Trevor Van Rys

Inspiration: 
Netflix
