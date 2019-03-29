import React, {Component} from 'react';

/* Product */
class Product extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      qty: 0
    };
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.showInfo = this.showInfo.bind(this);
  }

  add() {
    this.setState({
      qty: this.state.qty + 1
    });
    this.props.handleTotal(this.props.price, this.props.id);
  }

  subtract() {
    this.setState({
      qty: this.state.qty - 1
    });
    this.props.handleTotal(-this.props.price);
  }

  showInfo() {
    this.props.handleShow(this.props.info);
  }

  render() {
    return (
      <div className="product-list__items" data-product-id={this.props.id}>
        <div className="product-list__items--container">
            <div className="product-list__items--category product-list__items--copy">
                Category: {this.props.category}
            </div>
            <div className="product-list__items--copy">
                <img src={this.props.image} alt="" />
            </div>
            <div className="row form-group">
              <div className="col-sm-10">
                <div className="product-list__items--copy">Product: {this.props.name}</div>
                <div className="product-list__items--copy">Status: {this.props.status}</div>
              </div>
              <div>
                <span className="product-list__items--copy">Price: ${this.props.price}</span>
              </div>
              <div className="hidden">qty: {this.state.qty}</div>
            </div>
            <div className="row btn-toolbar">
            {/*
              <div className="col-6">
                <button className="btn btn-outline-primary" onClick={this.showInfo}>
                  show info
                </button>
              </div> */}
              <div className="col-6 text-right">
                <button className="btn btn-outline-primary button" onClick={this.add}>
                  Add To Cart
                </button>
            {/*<button className="btn btn-outline-primary" onClick={this.subtract} disabled={this.state.qty < 1}>
                  -1
                </button>*/}
              </div>
            </div>
        </div>
      </div>
    );
  }
}

export default Product;