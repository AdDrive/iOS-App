'use strict';
import React, {Component} from 'react';
import {connect} from 'react-redux';
import _ from 'lodash/core';
import {Drawer} from 'native-base';
import {BackAndroid, Platform, StatusBar,NavigationExperimental} from 'react-native';
import {Actions, Scene, Router} from 'react-native-router-flux';

import {closeDrawer} from './actions/drawer';
import Login from './components/rider/login/';
import SignIn from './components/rider/signIn/';
import Register from './components/rider/register/';
import Home from './components/rider/home/';
import SideBar from './components/rider/sideBar';
import Payment from './components/rider/payment';
import History from './components/rider/history';
import Notifications from './components/rider/notifications';
import Settings from './components/rider/settings';
import CardPayment from './components/rider/cardPayment';
import CreditCard from './components/rider/creditCard';
import ConfirmRide from './components/rider/confirmRide';
import RideBooked from './components/rider/rideBooked';
import Receipt from './components/rider/receipt';
import RideRequest from './components/driver/rideRequest';
import PickRider from './components/driver/pickRider';
import StartRide from './components/driver/startRide';
import DropOff from './components/driver/dropOff';
import RateRider from './components/driver/rateRider';
import { statusBarColor } from "./themes/base-theme";


const RouterWithRedux = connect()(Router);

class AppNavigator extends Component {

  static propTypes = {
    drawerState: React.PropTypes.string,
  }

  
  componentDidUpdate() {
    if (this.props.drawerState === 'opened') {
      this.openDrawer();
    }

    if (this.props.drawerState === 'closed') {
      this._drawer._root.close();
    }
  }
  openDrawer() {
    this._drawer._root.open();
  }

  closeDrawer() {
    if (this.props.drawerState === 'opened') {
      this.props.closeDrawer();
    }
  }


  render() {  // eslint-disable-line class-methods-use-this
    return (
      <Drawer
        ref={(ref) => { this._drawer = ref; }}
        type="overlay"
        tweenDuration={150}
        content={<SideBar navigator={this._navigator} />}
        tapToClose
        acceptPan={false}
        onClose={() => this.closeDrawer()}
        openDrawerOffset={0.2}
        panCloseMask={0.2}
        styles={{
          drawer: {
            shadowColor: '#000000',
            shadowOpacity: 0.8,
            shadowRadius: 3,
          },
        }}
        tweenHandler={(ratio) => {  //eslint-disable-line
          return {
            drawer: { shadowRadius: ratio < 0.2 ? ratio * 5 * 5 : 5 },
            main: {
              opacity: (2 - ratio) / 2,
            },
          };
        }}
        negotiatePan
      >
        <StatusBar
          backgroundColor={statusBarColor}
          barStyle="light-content"
        />
        <RouterWithRedux>
          <Scene key="root">
            <Scene key="login" component={Login} hideNavBar initial={true} />
            <Scene key="signIn" component={SignIn} />
            <Scene key="register" component={Register} />
            <Scene key="home" component={Home} />
            <Scene key="sideBar" component={SideBar} />
            <Scene key="payment" component={Payment} />
            <Scene key="history" component={History} />
            <Scene key="notifications" component={Notifications} />
            <Scene key="settings" component={Settings} />
            <Scene key="cardPayment" component={CardPayment} />
            <Scene key="creditCard" component={CreditCard} />
            <Scene key="confirmRide" component={ConfirmRide} />
            <Scene key="rideBooked" component={RideBooked} />
            <Scene key="receipt" component={Receipt} />
             <Scene key="rideRequest" component={RideRequest} />
            <Scene key="pickRider" component={PickRider} />
            <Scene key="startRide" component={StartRide} />
            <Scene key="dropOff" component={DropOff} />
            <Scene key="rateRider" component={RateRider} />
          </Scene>
        </RouterWithRedux>
      </Drawer>
    );
  }
}

function bindAction(dispatch) {
  return {
    closeDrawer: () => dispatch(closeDrawer()),
  };
}

const mapStateToProps = state => ({
  drawerState: state.drawer.drawerState,
});

export default connect(mapStateToProps, bindAction)(AppNavigator);
