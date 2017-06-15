'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity, Dimensions, Modal,Platform,StatusBar } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Header, Content, Text, Button, Icon, Card, CardItem, Title, Left, Right, Body  } from 'native-base';
import MapView from 'react-native-maps';
import { Grid, Col, Row } from 'react-native-easy-grid';

import styles from './styles';
import commonColor from '../../../../native-base-theme/variables/commonColor';

var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 42.3601;
const LONGITUDE = 71.0589;
const LATITUDE_DELTA = 0.0722;
const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO;
const SPACE = 0.01;

class PickRider extends Component {

    constructor(props) {
        super(props);
        this.state = {
            a: {
                latitude: 12.910000,
                longitude: LONGITUDE,
            },
            b: {
                latitude: 12.904000,
                longitude: 77.586034,
            },
            modalVisible : false,

        };
    }
     setModalVisible(visible) {
    this.setState({modalVisible: visible});
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
                <View style={{flex: 1}}>

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
                            <MapView.Marker coordinate={this.state.a}>
                                <View>
                                    <Icon name='ios-pin' style={{alignSelf: 'center',flex: 1 }} />
                                </View>
                            </MapView.Marker>
                        </MapView>)
                        : <View />
                        }
                        <Image source={require('../../../../images/dummyMap.png')} style={{height: height, opacity: this.state.opacity}}/>


                    <View style={styles.slideSelector}>
                        <Card>
                            <CardItem style={{backgroundColor:'#eee'}}>
                               <Left><Icon name='ios-person' style={styles.profileIcon} />
                                <Body><Text style={styles.pick}>PICK UP</Text>
                                <Text note style={styles.rider}>Joe</Text></Body></Left>
                            </CardItem>
                            <View style={{justifyContent: 'center',position: 'absolute',right: 10,top: 0,bottom: 0}}>
                                <Text style={styles.time}>2 MIN</Text>
                            </View>
                        </Card>

                    </View>


                    <Modal
                        animationType={'slide'}
                        transparent={false}
                        visible={this.state.modalVisible}
                        onRequestClose={() => {alert('Modal has been closed.')}}
                    >
                        <View style={{height: height,backgroundColor: '#1b557a'}}>
                          <Header  style={{ ...{backgroundColor: '#1b557a', borderBottomWidth: 0}, ...Platform.OS === 'ios' ? {} : styles.modalHeader}} androidStatusBarColor={commonColor.statusBarColorDark}>
                            <Left><Button transparent style={{justifyContent: 'center'}} onPress={() => {this.setModalVisible(false)}}>
                                <Icon name='ios-close' style={styles.close} />
                            </Button></Left>
                            <Body style={{flex:1.5}}><Title  style={Platform.OS === 'ios' ? styles.iosTitle : styles.aTitle}>CURRENT TRIPS</Title></Body>
                            <Right><Button transparent>
                                <Text  style={Platform.OS === 'ios' ? styles.iosHeaderText : styles.aHeaderText }>WAYBILL</Text>
                            </Button></Right>
                          </Header>


                          <Content style={styles.modalContainer}>
                          <View style={{paddingVertical: 30,paddingHorizontal: 10}}>
                            <Text style={styles.containHead}>NEXT STOP</Text>
                            <Card>
                                <CardItem bordered>
                                    <Left style={{marginLeft:-10}}>
                                        <Body>
                                        <Text style={{color: 'green',fontSize: 13,lineHeight: 15}}>PICK UP</Text>
                                        <Text style={{fontSize: 20,lineHeight:22}}>Joe</Text>
                                        </Body>
                                    </Left>
                                    <Right style={{alignSelf: 'center', alignItems:'flex-end'}}>
                                        <Icon name='ios-person' style={{ color: commonColor.toolbarDarkBg}} />
                                    </Right>
                                </CardItem>
                                    <CardItem button bordered>
                                        <Text style={{fontSize: 20,lineHeight:25}}>Taxi</Text>
                                    </CardItem>
                                <CardItem style={{flexDirection: 'row',padding: 0}}>
                                    <Grid>
                                        <Col>
                                            <CardItem button style={{ ...styles.btnContain, ...{borderRightWidth: 0.5, borderColor: '#ddd'}}}>
                                                <Left><Body style={{ alignItems:'center' }}><Icon name='ios-chatboxes'  />
                                                <Text style={{textAlign: 'center'}}>CONTACT</Text></Body></Left>
                                            </CardItem>
                                        </Col>
                                        <Col>
                                            <CardItem button style={styles.btnContain}>
                                                <Icon name='ios-close-circle-outline'  />
                                                <Text style={{textAlign: 'center'}}>CANCEL</Text>
                                            </CardItem>
                                        </Col>
                                    </Grid>
                                </CardItem>
                            </Card>
                          </View>


                          <View style={{paddingVertical: 30,paddingHorizontal: 10}}>
                          <Text style={styles.containHead}>UPCOMING STOP</Text>
                            <Card>
                                <CardItem>
                                    <Left><Icon name='ios-person' style={{alignSelf: 'center'}}/>
                                    <Body><Text style={styles.drop}>DROP OFF</Text>
                                    <Text note style={{textAlign: 'right',alignSelf: 'flex-end',fontSize: 18,fontWeight: '400'}}>Joe</Text></Body></Left>
                                </CardItem>
                            </Card>
                          </View>
                        </Content>
                        </View>
                    </Modal>


                    <View style={styles.headerContainer}>
                    <Header iosBarStyle="light-content" style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader } androidStatusBarColor={commonColor.statusBarColorDark} >
                        <Left><Button transparent  onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28,color: '#fff'}} />
                        </Button></Left>
                        <Body><Title  style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle }>ON TRIP</Title></Body>
                        <Right><Button transparent  onPress={() => {
                                this.setModalVisible(true)
                            }}>
                            <Icon name='ios-list' style={{color: '#fff'}} />
                        </Button></Right>
                    </Header>
                    <View style={Platform.OS === 'ios' ? styles.iosSrcdes : styles.aSrcdes}>
                        <View style={styles.searchBar}>
                            <TouchableOpacity style={styles.navigateBtn}  onPress={() => Actions.startRide({type:ActionConst.REPLACE})}>
                                <Icon name='md-navigate' style={{fontSize: 24}} />
                                <Text style={styles.navigate}>NAVIGATE</Text>
                            </TouchableOpacity>
                            <View style={styles.place}>
                                <Text style={styles.placeText} >4th T Block East,  Jayanagara, Bengaluru</Text>
                            </View>
                        </View>
                    </View>
                    </View>



                </View>
        )
    }
}

export default connect()(PickRider);
