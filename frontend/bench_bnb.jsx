import React from 'react';
import ReactDom from 'react-dom';
import { login, logout, signup } from './util/session_api_util';

document.addEventListener('DOMContentLoaded', () => {

    window.login = login;
    window.signup = signup;
    window.logout = logout;

    const root = document.getElementById('root');
    ReactDom.render(<h1>Welcome to BenchBnB</h1>, root);
});