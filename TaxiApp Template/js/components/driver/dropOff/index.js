'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, Dimensions, Modal,Platform,StatusBar } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Header, Content, Text, Button, Icon, Card, CardItem,Title, Left, Right, Body } from 'native-base';
import MapView from 'react-native-maps';

import styles from './styles';
import commonColor from '../../../../native-base-theme/variables/commonColor';

var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 12.920614;
const LONGITUDE = 77.586234;
const LATITUDE_DELTA = 0.1722;
const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO;
const SPACE = 0.01;

class DropOff extends Component {

    constructor(props) {
        super(props);
        this.state = {
            a: {
                latitude: 42.3601,
                longitude: LONGITUDE,
            },
            b: {
                latitude: 42.3601,
                longitude: 71.0589,
            },

        };
    }
    componentDidMount() {
        let that = this;
        setTimeout(function () {
            that.setState({
                visible: true,
            });
        }, 500);
        setTimeout(function () {
            that.setState({
                opacity: 0
            });
        }, 900);
    }
    render() {
        return (
                <View style={{ flex: 1, backgroundColor: '#1b557a' }}>
                    <Content>
                    </Content>
                        {(this.state.visible) ?
                        (<MapView
                            ref='map'
                            style={styles.map}
                            initialRegion={{
                            latitude: LATITUDE,
                            longitude: LONGITUDE,
                            latitudeDelta: LATITUDE_DELTA,
                            longitudeDelta: LONGITUDE_DELTA,
                            }}
                            scrollEnabled={false}>
                            <MapView.Marker coordinate={this.state.b}>
                                <View>
                                    <Icon name='ios-car' style={{fontSize: 24}} />
                                </View>
                            </MapView.Marker>
                            <MapView.Marker coordinate={this.state.b}>
                                <View  style={{top: -20}}>
                                    <Icon name='ios-pin' style={{ ...Platform.OS === 'ios' ? {} : {marginTop: 20} , ...{alignSelf: 'center',color: '#C61100',flex: 1}}} />
                                </View>
                            </MapView.Marker>
                        </MapView>)
                        : <View />
                        }
                        <Image source={require('../../../../images/dummyMap.png')} style={{ ...Platform.OS === 'ios' ? {height: height} : {height: height}, opacity: this.state.opacity }}/>


                    <View style={styles.slideSelector}>
                            <CardItem style={{flexDirection: 'row',backgroundColor: '#eee'}}>
                                <Left><Icon name='ios-person' style={{alignSelf: 'center',paddingRight: 10}} />
                                <Body><Text style={{color: '#C61100',fontSize: 13,fontWeight: '700',lineHeight: 14}}>DROP OFF</Text>
                                <Text note style={{fontSize: 18,fontWeight: '500'}}>Joe</Text></Body></Left>
                                <View style={{justifyContent: 'center',position: 'absolute',right: 10,top: 0,bottom: 0}}>
                                    <Text style={{textAlign: 'right'}}>13 min</Text>
                                </View>
                            </CardItem>
                        <Card>

                            <CardItem style={{borderTopWidth: 0, justifyContent: 'center'}}>
                                <Button block style={styles.tripBtn} onPress={() => Actions.rateRider({type: ActionConst.REPLACE})} >
                                    <Text style={styles.btnText}>COMPLETE TRIP</Text>
                                </Button>
                            </CardItem>
                        </Card>

                    </View>

                    <View style={styles.headerContainer}>
                       <Header androidStatusBarColor={commonColor.statusBarColorDark} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader } iosBarStyle="light-content">
                        <Left />
                        <Body><Title  style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle }>ON TRIP</Title></Body>
                        <Right />

                    </Header>
                        <View style={Platform.OS === 'ios' ? styles.iosSrcdes : styles.aSrcdes}>
                                <View style={styles.place}>
                                    <Text style={styles.placeText}>6, 39th Cross Rd, 4th T Block East,  Jayanagara, Bengaluru, Karnataka 560041</Text>
                                </View>
                        </View>
                    </View>


                </View>
        )
    }
}

export default connect()(DropOff);
