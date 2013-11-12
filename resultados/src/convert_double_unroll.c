if(wi->wav_header->num_channels == 1){
    for(i = 0; i < wi->nb_samples; i+=2){
        wi->short_left[i] = (short int)wi->left_side[i];
        wi->short_left[i + 1] = (short int)wi->left_side[i + 1];
    }
}
else if(wi->wav_header->num_channels == 2){
    for(i = 0; i < wi->nb_samples; i+=2){
        wi->short_left[i] = (short int)wi->left_side[i];
        wi->short_right[i] = (short int)wi->right_side[i];
        wi->short_left[i+1] = (short int)wi->left_side[i+1];
        wi->short_right[i+1] = (short int)wi->right_side[i+1];
    }
}
int count = 0;
if(wi->wav_header->num_channels == 1){
    int it = 4;
    for(i = 0; i < wi->nb_samples * it; i += it){
        memcpy(&wi->buffer[i], &wi->short_left[count], 2);
        count++;
        memcpy(&wi->buffer[i + 2], &wi->short_left[count], 2);
        count++;
    }
}
if(wi->wav_header->num_channels == 2){
    int it = 8;
    for(i = 0; i < wi->nb_samples * it; i += it){
        memcpy(&wi->buffer[i], &wi->short_left[count], 2);
        memcpy(&wi->buffer[i + 2], &wi->short_right[count], 2);
        count++;
        memcpy(&wi->buffer[i + 4], &wi->short_left[count], 2);
        memcpy(&wi->buffer[i + 6], &wi->short_right[count], 2);
        count++;
    }
}
