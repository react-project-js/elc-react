import React, {Component} from 'react';
import {Redirect} from 'react-router-dom';
import {PostData} from '../../services/PostData';

class Login extends Component {

  constructor(){
    super();
   
    this.state = {
     username: '',
     password: '',
     errorMsg: '',
     redirectToReferrer: false
    };

    this.login = this.login.bind(this);
    this.onChange = this.onChange.bind(this);

  }

  

  login() {
    if(this.state.username && this.state.password){
      PostData('login',this.state).then((result) => {
       let responseJson = result;
       if(responseJson.userData){         
         sessionStorage.setItem('userData',JSON.stringify(responseJson));
         this.setState({redirectToReferrer: true});
       }else{
        // alert(responseJson.error["text"]);
         this.setState({errorMsg: responseJson.error["text"]});
       }
       
      });
    }
    
   }

  onChange(e){
    this.setState({[e.target.name]:e.target.value});
   }

  
  

  render() {

     if (this.state.redirectToReferrer) {
      return (<Redirect to={'/home'}/>)
    }
   
    if(sessionStorage.getItem('userData')){
      return (<Redirect to={'/home'}/>)
    }

     return (
      <div className="row" id="Body">
        <div className="medium-5 columns left">
        <h4>Login</h4>
        <label><span className="error_msg"><b>{this.state.errorMsg}</b></span></label>
        <label>Username</label>
        <input type="text" name="username" placeholder="Username" onChange={this.onChange}/>
        <label>Password</label>
        <input type="password" name="password"  placeholder="Password" onChange={this.onChange}/>
        <input type="submit" className="button success" value="Login" onClick={this.login}/>
        <a href="/signup">Registration</a>
        </div>
      </div>
    );
  }
}

export default Login;