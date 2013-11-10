if(wi->wav_header->num_channels == 1){
    for(i = 0; i < wi->nb_samples; i++){
        wi->left_fixed[2*i+1] = wi->left_side[i];
        wi->left_fixed[2*i+2] = 0;
        wi->right_fixed[2*i+2] = 0;
    }
}
if(wi->wav_header->num_channels == 2){
    for(i = 0; i < wi->nb_samples; i++){
        wi->left_fixed[2*i+1] = wi->left_side[i];
        wi->left_fixed[2*i+2] = 0;
        wi->right_fixed[2*i+1] = wi->right_side[i];
        wi->right_fixed[2*i+2] = 0;
    }
}
