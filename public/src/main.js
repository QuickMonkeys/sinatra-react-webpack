import React from 'react';
import {render} from 'react-dom';

import Clients from './components/clients.jsx';

import "../css/main.css";
import "bootstrap-webpack";

render(<Clients />, document.querySelector('#content'));