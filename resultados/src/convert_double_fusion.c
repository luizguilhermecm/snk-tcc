int count = 0;
if(wi->wav_header->num_channels == 1){
    int it = 2;    
    for(i = 0; i < wi->nb_samples * it; i += it){
        wi->short_left[i/it] = (short int)wi->left_side[i/it];
        memcpy(&wi->buffer[i], &wi->short_left[count], 2);
        count++;
}
else if(wi->wav_header->num_channels == 2){
    int it = 4;
    for(i = 0; i < wi->nb_samples * it; i += it){
        wi->short_left[i/it] = (short int)wi->left_side[i/it];
        wi->short_right[i/it] = (short int)wi->right_side[i/it];
        memcpy(&wi->buffer[i], &wi->short_left[count], 2);
        memcpy(&wi->buffer[i + 2], &wi->short_right[count], 2);
        count++;
    }
}
