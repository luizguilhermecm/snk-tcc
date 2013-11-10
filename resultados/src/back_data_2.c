if(wi->wav_header->num_channels == 1){
    for(i = 0; i < wi->nb_samples; i++){
        wi->left_side[i] = wi->left_fixed[2*i+1]; 
    }
}
else if(wi->wav_header->num_channels == 2){
    for(i = 0; i < wi->nb_samples; i++){
        wi->left_side[i] = wi->left_fixed[2*i+1]; 
        wi->right_side[i] = wi->right_fixed[2*i+1]; 
    }
}
