import React, {Component} from 'react';
import Product from './Product';
import Total from '../CartTotal/Total';
console.clear();

let productList = [
  {id: 1, category: "Software", name: "smart office", price: 89, status: "available", img: "/smart_office.png" },
  {id: 2, category: "Software", name: "smart design", price: 79, status: "available", img: "/smart_design.png" },
  {id: 3, category: "Software", name: "smart network", price: 69, status: "available", img: "/smart_network.png" },
  {id: 4, category: "Software", name: "smart multimedia", price: 77, status: "available", img: "/smart_multimedia.png" },
  {id: 5, category: "Software", name: "smart product1", price: 89, status: "available", img: "/smart_product_1.png" },
  {id: 6, category: "Software", name: "smart product2", price: 79, status: "available", img: "/smart_product_2.png" },
  {id: 7, category: "Software", name: "smart product3", price: 69, status: "available", img: "/smart_product_3.png" },
  {id: 8, category: "Software", name: "smart product4", price: 77, status: "available", img: "/smart_product_4.png" },
];


/* ProductList */
class ProductList extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      total: 0,
      productList: "",
      cartList: []
    };

    this.createProduct = this.createProduct.bind(this);
    this.calculateTotal = this.calculateTotal.bind(this);
    this.showProduct = this.showProduct.bind(this);
  }

  componentDidMount() {
    setTimeout(() => {
      this.setState({ productList: productList });
    }, 1000);
  }

  createProduct(product) {
    this.setState({
      products: this.state.productList.push(product)
    });
  }

  calculateTotal(price, product) {
      
    let cartListArr = this.state.cartList;
    if (Object.keys(cartListArr).length && cartListArr[product] !== undefined) {
        for (let x in cartListArr) {
            if (+x === product)  {
                cartListArr[product] = {qty: cartListArr[product].qty+1};        
            }
        }    
    } else {
        cartListArr[product] = {qty: 1};
    }
    this.setState({
      total: this.state.total + price,
      cartList: cartListArr
    });
    console.log(this.state.cartList);
  }

  showProduct(info) {
    console.log(info);
    alert(info);
  }

  render() {
    if (!this.state.productList) return <p>loading...!!!!</p>;

    var component = this;
    var products = this.state.productList.map(function(product, i) {
      return (
        <Product
          category={product.category}
          name={product.name}
          price={product.price}
          status={product.status}
          handleShow={component.showProduct}
          handleTotal={component.calculateTotal}
          image={product.img}
          id={product.id}
          key={Date.now()+i}
        />
      );
    });

    return (
      <div>
        {/*<ProductForm handleProduct={this.createProduct} /> */}
        {products}
        <Total total={this.state.total} products={this.state.productList} cartList={this.state.cartList}/>
      </div>
    );
  }
}

export default ProductList;