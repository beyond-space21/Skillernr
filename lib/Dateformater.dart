DateFormator(String input) {
  List list = input.toLowerCase().split('');//give space.
//   print(decode(list));//Any formate String date to int date// Date formatter.
  // print('d/m/y');
  // print(decode_data(get_data1(list),get_data2(list),get_data3(list)));
  return (decodedata(getdata1(list),getdata2(list),getdata3(list)));
}

//------------------------------------------------
String getdata1(List<String> list) {
  List<String> data1 = [];
  bool s=true;
  if(list.length==0)s=false;
    while(s) {
      if(list[0]!=' '){
      data1.add(list[0]);
      list.remove(list[0]);
      }else{
        s=false;
        list.remove(list[0]);
      }
      
      if(list.length==0)s=false;
    }
  
  return data1.join();
}

//------------------------------------------------
String getdata2(List<String> list) {
  List <String> data2 = [];
  bool s=true;
  if(list.length==0)s=false;
    while(s) {
      if(list[0]!=' '){
      data2.add(list[0]);
      list.remove(list[0]);
      }else{
        s=false;
        list.remove(list[0]);
      }
      
      if(list.length==0)s=false;
    }
  
  return data2.join();
}

//------------------------------------------------
String getdata3(List<String> list) {
  List <String> data3 = [];
  bool s=true;
  if(list.length==0)s=false;
    while(s) {
      if(list[0]!=' '){
      data3.add(list[0]);
      list.remove(list[0]);
      }else{
        s=false;
        list.remove(list[0]);
      }
      
      if(list.length==0)s=false;
    }
  
  return data3.join();
}

//------------------------------------------------
String decodedata(String data1,data2,data3){
  String d,m,y;
  

  if(isint(data1[0])){
    List a=data1.split('');
  a.remove('t');
  a.remove('h');
  a.remove('s');
  a.remove('n');
  a.remove('r');
  a.remove('d');
    data1=a.join();
  }
  
    
  if(isint(data2[0])){
    List a=data2.split('');
  a.remove('t');
  a.remove('h');
  a.remove('s');
  a.remove('n');
  a.remove('r');
  a.remove('d');
    data2=a.join();
  }
  
     
  if(isint(data3[0])){
    List a=data3.split('');
  a.remove('t');
  a.remove('h');
  a.remove('s');
  a.remove('n');
  a.remove('r');
  a.remove('d');
    data3=a.join();
  }
  
  if(data1.length==0 || data2.length==0 || data3.length==0)
    return 'e1 some data is missing (or) have input error';
  if (isint(data1[0])&&data1.length>2){
    y= data1;
  }else if (isint(data1[0])&&data1.length<=2){
    d= data1;
  }else if((data1[0].codeUnitAt(0) > 96) && (data1[0].codeUnitAt(0) < 123)){
    m=getm('${data1[0]}${data1[1]}${data1[2]}');
    if(m=='!')return 'e2 some data is missing (or) have input error';
  }else {print(data1);return 'e3 some data is missing (or) have input error';}
  
 
  if (isint(data2[0])&&data2.length>2){
    y= data2;
  }else if (isint(data2[0])&&data2.length<=2){
    d= data2;
  }else if(((data2[0].codeUnitAt(0) > 96) && (data2[0].codeUnitAt(0) < 123))){
    m=getm('${data2[0]}${data2[1]}${data2[2]}');
    if(m=='!')return 'e4 some data is missing (or) have input error';
  }else return 'e5 some data is missing (or) have input error';
  
  
  if (isint(data3[0])&&data3.length>2){
    y= data3;
  }else if (isint(data3[0])&&data3.length<=2){
    d= data3;
  }else if(((data3[0].codeUnitAt(0) > 96) && (data3[0].codeUnitAt(0) < 123))){
    m=getm('${data3[0]}${data3[1]}${data3[2]}');
    if(m=='!')return 'e6 some data is missing (or) have input error';
  }else return 'e7 some data is missing (or) have input error';
  
  return '${d}/${m}/${y}';
}

//------------------------------------------------
String getm(String a){
  
  switch(a) { 
   case 'jan': { 
      return '1';
   } 
   break;
      
   case 'feb': { 
      return '2';
   } 
   break;
  
   case 'mar': { 
      return '3';
   } 
   break; 
      
   case 'apr': { 
      return '4';
   } 
   break; 
      
   case 'may': { 
      return '5';
   } 
   break;
        
   case 'jun': { 
      return '6';
   } 
   break;
      
   case 'jul': { 
      return '7';
   } 
   break;
      
   case 'aug': { 
      return '8';
   } 
   break;
   
   case 'sep': { 
      return '9';
   } 
   break;
      
   case 'oct': { 
      return '10';
   } 
   break;
      
   case 'nov': { 
      return '11';
   } 
   break;
      
   case 'dec': { 
      return '12';
   } 
   break;
      
   default: { 
      return '!';
   }
   break; 
} 
}

//------------------------------------------------
bool isint(var cha) {
  var s = cha.codeUnitAt(0);
  if ((s >= 48) && (s <= 57))
    return true;
  else
    return false;
}

//------------------------------------------------