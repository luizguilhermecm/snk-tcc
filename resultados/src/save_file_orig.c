for(i = 0; i < wi->wav_header->subchunk2_size; i++){
    fwrite(&wi->buffer[i], sizeof(unsigned char), 1, f);
}
