import React from "react";
import ReactDOM from "react-dom";
import Greeter from "./hello";

const greeting = document.getElementById("greeting");
ReactDOM.render(<Greeter name="Phoenix" />, greeting);
