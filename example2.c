void function(char *str){
  char buffer[16];

 // it suppose to use strncpy 
  strcpy(buffer, str);
}

void main(){
  char large_string[256];
  int i; 

  for (i = 0; i < 255; i++){
    large_string[i] = 'A';

    function(large_string);
}

}
