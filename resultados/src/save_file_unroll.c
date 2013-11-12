for(i = 0; i < wi->wav_header->subchunk2_size; i += 4){
        fwrite(&wi->buffer[i], sizeof(unsigned char), 1, f);
        fwrite(&wi->buffer[i + 1], sizeof(unsigned char), 1, f);
        fwrite(&wi->buffer[i + 2], sizeof(unsigned char), 1, f);
        fwrite(&wi->buffer[i + 3], sizeof(unsigned char), 1, f);
    }
}
