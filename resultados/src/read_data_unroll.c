int it = i = 0;
if(wi->wav_header->num_channels == 1){
    while(it < wi->wav_header->subchunk2_size){
        wi->left_side[i] = bytes_to_double(buffer[it], 
                buffer[it + 1]);
        wi->zero_data[i] = 0;
        it += 2;
        i++;
        wi->left_side[i] = bytes_to_double(buffer[it], 
                buffer[it + 1]);
        wi->zero_data[i] = 0;
        it += 2;
        i++;
    }
}
else if(wi->wav_header->num_channels == 2){
    while(it < wi->wav_header->subchunk2_size){
        wi->left_side[i] = bytes_to_double(buffer[it], 
                buffer[it + 1]);
        wi->zero_data[i] = 0;
        it += 2;
        wi->right_side[i] = bytes_to_double(buffer[it],
                buffer[it + 1]);
        it+=2;
        i++;
        wi->left_side[i] = bytes_to_double(buffer[it], 
                buffer[it + 1]);
        wi->zero_data[i] = 0;
        it += 2;
        wi->right_side[i] = bytes_to_double(buffer[it],
                buffer[it + 1]);
        it+=2;
        i++;
    }
}