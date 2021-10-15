<div id="top"></div>
<h1> THE MOVIE DB</h1>
<h2>ABOUT THE PROJECT</h2>
<img src="https://user-images.githubusercontent.com/28947316/135781908-31492d97-ae04-4126-9a4d-1e41418223d0.jpg" alt="Logo" width="60%" height="20%" margin="50px" position="relative">

A web application for searching movies.  Data for movies are based on third party API (OMDB API).  

## BUILT WITH
- Ruby 2.6.2p47
- Sinatra
- Flexbox
- CSS
- HTML
<p align="right">(<a href="#top">back to top</a>)</p>

## GETTING STARTED
To get a local copy up and running follow these simple example steps.

### Prerequisites
List of things you need to use web application and how to install them.
1.  Check if brew is installed.
    brew help. If brew is there, you get output. If not, you get 'command not found'.
    Install brew if not found.
     ```sh
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
2.  Chek is ruby is installed.
    ```sh
    ruby --v
    ```
    Install ruby if not found.
    ```sh
    brew install ruby
    ```
3.  Install RVM
    ```sh
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
    ```
4.  Install Dependency manager
     ```sh
    $gem install bundler
    ```
<p align="right">(<a href="#top">back to top</a>)</p>

### Installation
1.  Fork the project to your github repo.
2.  Clone the project.
     ```sh
    git clone https://github.com/saralimbu2017/movies_search.git
    ```
3.  Get a free API Key at http://www.omdbapi.com/
4.  Install the gems.
     ```sh
    bundle install
    ```
5.  Enter your API key in main.rb
    apikey='Enter you API'
    <p align="right">(<a href="#top">back to top</a>)</p>
