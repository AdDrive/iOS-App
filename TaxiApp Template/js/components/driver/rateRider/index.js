'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity, Dimensions, Modal,Platform,StatusBar } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Header, Content, Text, Button, Icon, Card, CardItem,Title, Left, Right, Body  } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';
import MapView from 'react-native-maps';

import styles from './styles';
import commonColor from '../../../../native-base-theme/variables/commonColor';

var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 12.920614;
const LONGITUDE = 77.586234;
const LATITUDE_DELTA = 0.0722;
const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO;
const SPACE = 0.01;

class RateRider extends Component {

    constructor(props) {
        super(props);
        this.state = {
            a: {
                latitude: 12.920000,
                longitude: LONGITUDE,
            },

            modalVisible : true,

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
                <View style={this.state.modalVisible === true ? {opacity: 0.5,flex: 1} : {flex: 1}}>
                        <Header iosBarStyle="light-content" style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader } androidStatusBarColor={commonColor.statusBarColorDark}>
                        <Left><Button transparent onPress={() => Actions.pop()}>
                            <Icon name='md-arrow-back' style={{color: '#fff',fontSize: 28}} />
                        </Button></Left>
                        <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle }>TAXI</Title></Body><Right/>

                    </Header>
                    <Content scrollEnabled={false}>
                        {(this.state.visible) ?
                        (<MapView
                            ref='map'
                            style={styles.map}
                            initialRegion={{
                            latitude: LATITUDE,
                            longitude: LONGITUDE,
                            latitudeDelta: LATITUDE_DELTA,
                            longitudeDelta: LONGITUDE_DELTA,
                            }}>
                            <MapView.Marker coordinate={this.state.a}>
                                <View>
                                    <Icon name='ios-car' style={{ fontSize: 24, color: '#1b557a' }} />
                                </View>
                            </MapView.Marker>
                        </MapView>)
                        : <View />
                        }
                        <Image source={require('../../../../images/dummyMap.png')} style={{height: height, opacity: this.state.opacity}}/>





                    <View style={styles.slideSelector}>
                        <Card style= {{...styles.footerCard }, {...Platform.OS === 'ios' ? {top: -3} : {top: -10} }}>
                            <CardItem style={{backgroundColor:'#eee'}}>
                                <Left><Body>
                                <Text style={styles.trip}>LAST TRIP</Text>
                                <Text note style={styles.pay}>$12.05</Text>
                                </Body></Left>
                                <Right>
                                <Button small style={styles.helpBtn} bordered >
                                    <Text style={{fontSize: 14,lineHeight: 16}}>NEED HELP?</Text>
                                </Button>
                                </Right>
                            </CardItem>
                        </Card>
                        <Card style= {{...styles.footerCard }, {...Platform.OS === 'ios' ? {top: -3} : {top: -15} }}>
                            <CardItem style={{backgroundColor:'#eee'}}>
                                <Left><Body><Text>JOE</Text>
                                <Text note style={{fontWeight: '400'}}>Hyundai Xcent</Text></Body></Left>
                            </CardItem>
                            <View style={{justifyContent: 'center',position: 'absolute',right: 10,top: 0,bottom: 0, backgroundColor:'#eee'}}>
                                <Text style={{textAlign: 'right'}}>4.9 <Icon name='ios-star' style={styles.starIcon} /></Text>
                            </View>
                        </Card>

                    </View>



                    </Content>
                

                    <Modal
                        animationType={'slide'}
                        transparent={true}
                        visible={this.state.modalVisible}
                        onRequestClose={() => {alert('Modal has been closed.')}}
                        >
                        <View style={styles.modalView}>
                                <CardItem style={styles.rateCard}>
                                    <Left><Icon name='ios-person' style={styles.profileIcon} />
                                    <Body><Text style={{fontSize: 13,fontWeight: '700',lineHeight: 14}}>RATE</Text>
                                    <Text note style={{fontSize: 18,fontWeight: '500'}}>Joe</Text></Body></Left>
                                </CardItem>
                            <Card style={{borderRadius: 0,borderColor: '#eee', margin:0}}>
                                <View style={styles.ratings}>
                                        <Icon name='ios-star' style={{letterSpacing: 10,color: commonColor.lightThemePlaceholder}} />
                                        <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                        <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                        <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                        <Icon name='ios-star'style={{color: commonColor.lightThemePlaceholder}} />
                                </View>
                                <CardItem style={styles.btnContainer}>
                                    <Button block style={{height: 60, flex:1}}  onPress={() => {this.setModalVisible(false)}} >
                                        <Text style={styles.btnText}>COMPLETE RATING</Text>
                                    </Button>
                                </CardItem>
                            </Card>
                        </View>
                    </Modal>



                </View>
        )
    }
}

export default connect()(RateRider);
