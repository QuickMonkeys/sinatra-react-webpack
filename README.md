# Sinatra with React and Webpack

## A simple example to demonstrate how we can use Sinatra with React and Webpack

The data is returning using a an action from sinatra controller to be used by the component.

The transpiler used to generate javascript is Babel.

Webpack is used to create the javascript bundle of the project (see webpack.config.js).

Foreman is used to start two services: 
```
    - Web, that's responsible to run Sinatra.
    - Pack, that's responsible for watch changes and recompile code.
```

To get the code:

`git clone https://github.com/QuickMonkeys/sinatra-react-webpack.git`

`cd sinatra-react-webpack`

run `npm i` to install node_modules

run `npm run devstart` to start the application using Foreman.

You can see a live [Demo](https://sinatra-react-webpack-quick.herokuapp.com/) here.
