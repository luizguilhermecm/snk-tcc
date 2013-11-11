for(i = 0; i < wi->wav_header->subchunk2_size; 
        i += wi->wav_header->num_channels){
    fwrite(&wi->buffer[i], sizeof(unsigned char), 1, f);
    if(wi->wav_header->num_channels == 2){
        fwrite(&wi->buffer[i + 1], sizeof(unsigned char), 1, f);
    }
}
