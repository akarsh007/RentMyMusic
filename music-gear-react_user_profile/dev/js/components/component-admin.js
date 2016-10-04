import React from "react";
import axios from "axios";
import { Router, Route, Link , browserLocation, browserHistory} from 'react-router'
var Admin = React.createClass({

  

  render: function(){

   return(<div className="admin">

       <div><Link to="/categories">See Categories</Link></div></div>)


  }

})

export default Admin