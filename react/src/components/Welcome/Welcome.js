import React, {Component} from 'react';
import {PostData} from '../../services/PostData';
import ProductList from '../../components/ProductList/ProductList';

class Welcome extends Component {
  constructor(props) {
    super(props)
    this.state = {
      prodLists:[],
    };   
    PostData('productlist',this.state).then((result) => {
        let responseJson = result;
        if (responseJson.productData) {         
            this.setState({prodLists: responseJson.productData});
       }
    });
  }
  
  render() { 
      var products = this.state.prodLists.map(product => (
          <ProductList
            prodName={product.productName}
            prodPrice={product.productPrice}
            prodDesc={product.prdouctDesc}
            prodImage={product.productThumbImage}
          />
      ));
    
    return (
        <div class="container">
          Product List Page
          {products}
        </div>
    );
  }
}

export default Welcome;