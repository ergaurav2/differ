#!/bin/bash
#java -Dapplication.properties=file:./application.properties -jar target/differ-cmdline-0.0.1-SNAPSHOT.jar /opt/testovaci-data/1_Vlna_testovani-Vysledky_porovnani_obrazku/1_Sada_testovacich_obrazku/2_JPEG/2_1_01-Bila.jpg
#java -Dapplication.properties=file:./application.properties -jar target/differ-cmdline-0.0.1-SNAPSHOT.jar --save-raw-outputs image.jpf
#java -Dapplication.properties=file:./application.properties -jar target/differ-cmdline-0.0.1-SNAPSHOT.jar --save-raw-outputs --save-report --save-properties image.jp2
java -Dapplication.properties=file:./application.properties -jar target/differ-cmdline-0.0.1-SNAPSHOT.jar --save-raw-outputs --save-report --save-properties image.jpg
