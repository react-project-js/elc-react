import React, {Component} from 'react';
import {Redirect} from 'react-router-dom';
import './Home.css';
import {PostData} from '../../services/PostData';
import ReactConfirmAlert, { confirmAlert } from 'react-confirm-alert'; 
import '../../styles/react-confirm-alert.css';

class Home extends Component {
 

  constructor(props) {
    super(props);

    this.state = {
      data:[],
      redirectToReferrer: false,
      userName:'',
      userEmail:'',
    };
    this.logout = this.logout.bind(this);
  }

   logout(){
     sessionStorage.setItem("userData",'');
     sessionStorage.clear();
     this.setState({redirectToReferrer: true});
   }
   
  componentWillMount() {
    if(sessionStorage.getItem('userData')){
      let data = JSON.parse(sessionStorage.getItem("userData"));
      this.setState({userName: data.userData.name,userEmail: data.userData.email});
    }
  }
  
  render() {
    if (this.state.redirectToReferrer) {
      return (<Redirect to={'/login'}/>)
    }

    return (
      <div className="row" id="Body">
        <div className="medium-12 columns">
        <a href="#" onClick={this.logout} className="logout">Logout</a>
       <div>Welcome {this.state.userName},</div>
       <div><b>Your Email:</b> {this.state.userEmail},</div>
        
        </div>      
      
      </div>
    );
  }
}

export default Home;