import React, { PropTypes, Component } from 'react';
import ReactDOM from 'react-dom';
import "react-responsive-carousel/lib/styles/carousel.min.css";
import { Carousel } from 'react-responsive-carousel';

class DemoCarousel extends Component {
    render() {
        return (
            <Carousel>
                <div>
                    <img src="http://react-responsive-carousel.js.org/assets/3.jpeg" />
                    <p className="legend">Legend 1</p>
                </div>
                <div>
                    <img src="http://react-responsive-carousel.js.org/assets/3.jpeg" />
                    <p className="legend">Legend 2</p>
                </div>
               
            </Carousel>
        );
    }
}

export default DemoCarousel;