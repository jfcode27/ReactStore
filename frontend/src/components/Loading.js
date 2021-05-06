import React, { useEffect, useState } from 'react'
import { NavLink, withRouter } from 'react-router-dom'
import "./components.css";
import Aos from 'aos';
import { Redirect } from 'react-router-dom';

import logo from '../assets/images/Logo.svg'

const Loading = () => {

    const [v, setV] = useState(false)

    useEffect(() => {
        Aos.init();
    }, []);

    setTimeout(() => {
        setV(true);
    }, 1000)

    return (
        <div className="loading" >
            {
                v ? <Redirect to='/'/> : null
            }
            <img src={logo}  data-aos="fade-up" />
            <h1  data-aos="fade-zoom-in"  data-aos-delay="500" >React Store</h1>
        </div>
    )
}

export default withRouter(Loading)