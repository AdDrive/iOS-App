'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { View, TouchableOpacity, Dimensions,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Container, Header, Content, Text, Button, Icon, Card, CardItem,InputGroup, Input,Title , Left, Right, Body, Item , Label  } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';

var { width, height } = Dimensions.get('window');


class Settings extends Component {

    render() {
        return (
                <Container style={{backgroundColor: '#fff'}} >
                    <Header androidStatusBarColor={commonColor.statusBarLight}  style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader }>
                        <Left><Button transparent  onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28, color:'#1b557a'}} />
                        </Button></Left>
                        <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle}>Settings</Title></Body>
                        <Right><Button transparent>
                            <Icon name='md-more' style={{fontSize: 28, color:'#1b557a'}} />
                        </Button></Right>
                    </Header>
                    <Content>
                        <View style={{backgroundColor: '#eee'}}>
                            <Icon name='ios-person' style={styles.profileIcon} />
                        </View>
                        <Grid>
                            <Row style={{ ...styles.inputContainer, ...{flexDirection: 'row', margin: 10}}}>
                                <Col style={styles.input}>
                                    <Item stackedLabel style={{ borderBottomWidth:1, marginHorizontal :10 }}>
                                    <Label note>FIRST NAME</Label>
                                    <Input value='Shivarj' placeholderTextColor={commonColor.lightThemePlaceholder}/>
                                    </Item>
                                </Col>
                                <Col style={styles.input}>
                                     <Item stackedLabel style={{borderBottomWidth:1 ,marginHorizontal :10 }}>
                                     <Label note>LAST NAME</Label>
                                    <Input value='Kumar' placeholderTextColor={commonColor.lightThemePlaceholder}/>
                                    </Item>
                                </Col>
                            </Row>
                            <Row style={{ ...styles.input, ...{marginLeft: 10}}}>
                                <Col>
                                <Item stackedLabel style={{borderBottomWidth:1 ,marginHorizontal :10}}>
                                    <Label note>EMAIL</Label>
                                    <Input value='Shivraj@gmail.com' placeholderTextColor={commonColor.lightThemePlaceholder}/>
                                 </Item> 
                                 </Col>  
                                </Row>
                                <Row style={{ ...styles.input, ...{marginLeft:10, marginTop:10}}}>
                                <Col><Item stackedLabel style={{borderBottomWidth:1 ,marginHorizontal :10}}>
                                   <Label note >MOBILE</Label>
                                    <Input value='9876543210' placeholderTextColor={commonColor.lightThemePlaceholder}/>
                                    </Item></Col>
                                </Row>

                            <Card style={styles.inputContainer}>
                                
                                <CardItem style={styles.blueBorder}>
                                    <Text style={styles.blueHeader}>PROFILES</Text>
                                </CardItem>

                                    <TouchableOpacity>
                                    <CardItem style={{borderBottomWidth: 0,paddingBottom: 0, margin:10 }}>
                                        <Icon name='ios-add-circle-outline' style={{fontSize: 25}} />
                                        <Text>  Start Riding with Profiles</Text>
                                    </CardItem>
                                    </TouchableOpacity>

                                <CardItem style={{borderBottomWidth: 0, marginLeft:10}}>
                                    <Text note>Enable profiles to simplify your business travel</Text>
                                </CardItem>

                                <CardItem style={styles.blueBorder}>
                                    <Text style={styles.blueHeader}>PLACES</Text>
                                </CardItem>

                                    
                                    <CardItem button >
                                    <Left><Icon name='ios-home' style={{fontSize: 20}} />
                                        <Body><Text>Home</Text>
                                        <Text note>Mysore</Text></Body></Left>
                                    </CardItem>
                                   
                                    <CardItem button style={{borderBottomWidth: 0}}>
                                        <Left><Icon name='ios-briefcase' style={{fontSize: 20}} />
                                        <Body><Text>Work</Text>
                                        <Text note>Jayanagar</Text></Body></Left>
                                    </CardItem>
                                   

                                <CardItem style={styles.blueBorder}>
                                    <Text style={styles.blueHeader}>PEOPLE</Text>
                                </CardItem>

                                     
                                        <CardItem button style={{borderBottomWidth:1 ,marginHorizontal :10,borderBottomColor:commonColor.lightThemeColor, paddingVertical:15}}>
                                            <Text>Emergency Contacts</Text>
                                        </CardItem>
                                    
                                    <CardItem button style={{borderBottomWidth:0 ,marginHorizontal :10,borderBottomColor:commonColor.lightThemeColor, paddingVertical:15}}>
                                            <Text >Suggested Invites</Text>
                                    </CardItem>
                                   
                                </Card>

                        </Grid>
                    </Content>
                </Container>
        )
    }
}

export default connect()(Settings);
