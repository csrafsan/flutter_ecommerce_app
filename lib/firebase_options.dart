import 'dart:io';

import 'package:firebase_core/firebase_core.dart';


FirebaseOptions firebaseOptions = Platform.isAndroid
    ? const FirebaseOptions(
        apiKey: 'AIzaSyCe0d-QN9av9oIRxPmojy2pZ_9wlVVP-Sk',  // Make sure not to share sensitive information publicly
        appId: '1:1034808871554:android:0cfe3a75fb036f732c029b',
        messagingSenderId: '1034808871554',
        projectId: 'islamicbookshop-8c580',)
    : const FirebaseOptions(
        apiKey: 'AIzaSyDEMZW6nIb-vuKzcHeyg99bta7LBh9LrBE',  // Make sure not to share sensitive information publicly
        appId: '1:1034808871554:ios:12dd7ba03fa628122c029b',
        messagingSenderId: '1034808871554',
        projectId: 'islamicbookshop-8c580',
        );



