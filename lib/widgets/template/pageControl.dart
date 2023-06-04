// ignore_for_file: file_names

import 'package:workwise/widgets/options/dailyexpence.dart';
import 'package:workwise/widgets/options/dashboard.dart';
import 'package:workwise/widgets/options/setting.dart';

import '../options/bill.dart';
import '../options/buyer.dart';
import '../options/inventory.dart';
import '../options/orders.dart';
import '../options/seller.dart';
var pages ={
 'Dashboard':{
  'page':const Dashboard(),
  'name':"Dashboard"
 },
 'Orders':{
  'page':const Orders(),
  'name':"Orders"
 },
 'Inventory':{
  'page':const Inventory(),
  'name':"Inventory"
 },
 'Bill':{
  'page':const Bill(),
  'name':"Bill"
 },
 'Dailyexpence':{
  'page':const Daily(),
  'name':"Dailyexpence"
 },
 'Seller':{
  'page':const Seller(),
  'name':"Seller"
 },
 'Buyer':{
  'page':const Buyer(),
  'name':"Buyer"
 },
 'Setting':{
  'page':const Setting(),
  'name':"Setting"
 },
};
