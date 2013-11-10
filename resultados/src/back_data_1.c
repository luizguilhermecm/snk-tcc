for(i = 0; i < wi->nb_samples; i++){
    wi->left_side[i] = wi->left_fixed[2*i+1]; 
    if(wi->wav_header->num_channels == 2){
        wi->right_side[i] = wi->right_fixed[2*i+1]; 
    }
}
