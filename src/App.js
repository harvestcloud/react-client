import React from 'react';
import './App.css';

function WhatDoesTheServerSay() {
  return (
    <div className="what-does-the-server-say">
      <h2>
        What does the <span className="fox">fox</span> <em>server</em> say?
      </h2>
      <div className="alert alert-success">
        <pre>Hello</pre>
        Hello
      </div>
    </div>
  );
}

function App() {
  return (
    <div className="App">
      <h1>Harvest Cloud</h1>
      <hr />
      <WhatDoesTheServerSay />
    </div>
  );
}

export default App;
