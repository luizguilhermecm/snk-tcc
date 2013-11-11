if(wi->wav_header->num_channels == 1){
    for(i = 0; i < wi->wav_header->subchunk2_size; i++){
        fwrite(&wi->buffer[i], sizeof(unsigned char), 1, f);
    }

}
else if(wi->wav_header->num_channels == 2){
    for(i = 0; i < wi->wav_header->subchunk2_size; i += 2){
        fwrite(&wi->buffer[i], sizeof(unsigned char), 1, f);
        fwrite(&wi->buffer[i + 1], sizeof(unsigned char), 1, f);
    }
}
