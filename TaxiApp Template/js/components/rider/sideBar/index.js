'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Platform, StatusBar } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Content, View, Text, Icon, List, ListItem , Left, Right, Body} from 'native-base';

import { closeDrawer } from '../../../actions/drawer';
import styles from './styles';


class SideBar extends Component {

    static propTypes = {
      reset: React.PropTypes.func,
      closeDrawer: React.PropTypes.func,
    }

    render(){
        return (
            <View style={{flex: 1,backgroundColor: '#1b557a'}}>
                    <Content style={Platform.OS === 'android' ? styles.adrawerContent : styles.drawerContent}>
                    	<List  foregroundColor={'white'} style={styles.profile}>
                            <ListItem button iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-person' style={{ color: '#fff'}} />
                                <Text style={{ ...styles.linkText, marginTop:2}} >Shivraj Kumar</Text></Left>
                            </ListItem>
                        </List>
                        <List  foregroundColor={'white'} style={styles.Bg} >
                            <ListItem button onPress={() => { Actions.payment(); this.props.closeDrawer(); }} iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-card'  style={Platform.OS === 'ios' ? styles.iosSidebarIcons : styles.aSidebarIcons} />
                                <Text style={styles.linkText} >Payment</Text></Left>
                            </ListItem>
                            <ListItem button onPress={() => { Actions.history(); this.props.closeDrawer(); }}  iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-keypad-outline'  style={Platform.OS === 'ios' ? styles.iosSidebarIcons : styles.aSidebarIcons} />
                                <Text style={styles.linkText}>History</Text></Left>
                            </ListItem>
                            <ListItem button onPress={() => { Actions.notifications(); this.props.closeDrawer(); }}  iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-notifications' style={Platform.OS === 'ios' ? styles.iosSidebarIcons : styles.aSidebarIcons} />
                                <Text style={styles.linkText}>Notifications</Text></Left>
                            </ListItem>
                            <ListItem button onPress={() => { Actions.settings(); this.props.closeDrawer(); }} iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-settings' style={Platform.OS === 'ios' ? styles.iosSidebarIcons : styles.aSidebarIcons} />
                                <Text style={styles.linkText}>Settings</Text></Left>
                            </ListItem>
                            <ListItem button onPress={() => { Actions.login({type: ActionConst.RESET}); this.props.closeDrawer(); }}iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-power' style={Platform.OS === 'ios' ? styles.iosSidebarIcons : styles.aSidebarIcons} />
                                <Text style={{...styles.linkText, marginTop: 5, marginLeft: 5}}> SIGN OUT </Text></Left>
                            </ListItem>
                            <ListItem button onPress={() => { Actions.receipt(); this.props.closeDrawer(); }}style={Platform.OS === 'android' ? styles.aAboutlink : styles.iosAboutlink} >
                                <Text style={{color: '#fff'}}>About</Text>
                            </ListItem>
                            <ListItem button onPress={() => { Actions.rideRequest(); this.props.closeDrawer(); }} iconLeft style={Platform.OS === 'android' ? styles.alinks : styles.links} >
                                <Left><Icon name='ios-car' style={Platform.OS === 'ios' ? styles.iosSidebarIcons : styles.aSidebarIcons} />
                                <Text style={styles.linkText}>Driver App</Text></Left>
                            </ListItem>
                        </List>

                    </Content>

            </View>
        );
    }
}

function bindAction(dispatch) {
  return {
    closeDrawer: () => dispatch(closeDrawer()),
  };
}

const mapStateToProps = state => ({
});

export default connect(mapStateToProps, bindAction)(SideBar);
