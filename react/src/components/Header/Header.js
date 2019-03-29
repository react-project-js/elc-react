import React, { Component } from 'react';
import {PostData} from '../../services/PostData';
import ReactDOM from 'react-dom';
import "react-responsive-carousel/lib/styles/carousel.css";
import { Carousel } from 'react-responsive-carousel';
import { Container, Row, Col, Form, Input, Button, Navbar, Nav,
  NavbarBrand, NavLink, NavItem, UncontrolledDropdown,
  DropdownToggle, DropdownMenu, DropdownItem, NavDropdown } from 'react-bootstrap';
import MenuList from '../../components/Header/MenuList';


class Header extends Component {
  constructor(props) {
    super(props)
    this.state = {
      mainMenu:[],
    }; 
    PostData('productCategory',this.state).then((result) => {
        let responseJson = result;
        if (responseJson.productCategory) {         
            this.setState({mainMenu: responseJson.productCategory});
        }
    });
  } 
  render() {
    var menu_list = this.state.mainMenu.map(menu => (
        <MenuList menuId={menu.id} menuName={menu.categoryName} />
    ));
    return (
      <div className="callout primary" id="Header">
        <div className="row column">
            <h1>{this.props.name}</h1>          
            <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
                <Navbar.Brand href="/">HOME</Navbar.Brand>
                <Navbar.Toggle aria-controls="responsive-navbar-nav" />
                <Navbar.Collapse id="responsive-navbar-nav">
                    <Nav className="mr-auto">
                        {menu_list}
                        <Nav.Link href="/login">LOGIN</Nav.Link>
                        <Nav.Link href="/signup">SIGNUP</Nav.Link>                        
                    </Nav>
                </Navbar.Collapse>
            </Navbar>
        </div>    
        <Carousel showArrows={true}>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2019-anr-power-of-night/02_ANR_Repromote_Global_exAPAC_pc_mpp_1366x500.jpg" />
                    <p className="legend">Legend 3</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/mpp-headers/fall-2018/pure-color-envy-feat-karlie/01_PC_Envy_Extensions_pc_mpp_GlblExAsia_1366x500.jpg" />
                    <p className="legend">Legend 1</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2018-perfectionist-pro/pc_mpp_header-perfectionist-pro_product-only.jpg" />
                    <p className="legend">Legend 2</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2019-anr-power-of-night/02_ANR_Repromote_Global_exAPAC_pc_mpp_1366x500.jpg" />
                    <p className="legend">Legend 3</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2019-anr-power-of-night/02_ANR_Repromote_Global_exAPAC_pc_mpp_1366x500.jpg" />
                    <p className="legend">Legend 3</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2019-anr-power-of-night/02_ANR_Repromote_Global_exAPAC_pc_mpp_1366x500.jpg" />
                    <p className="legend">Legend 3</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2019-anr-power-of-night/02_ANR_Repromote_Global_exAPAC_pc_mpp_1366x500.jpg" />
                    <p className="legend">Legend 3</p>
                </div>
                <div>
                    <img src="https://www.esteelauder.com/media/export/cms_2.0/merch-windows/by-campaign/spring2019-anr-power-of-night/02_ANR_Repromote_Global_exAPAC_pc_mpp_1366x500.jpg" />
                    <p className="legend">Legend 3</p>
                </div>
            </Carousel>
      </div>
    );
  }
}

export default Header;