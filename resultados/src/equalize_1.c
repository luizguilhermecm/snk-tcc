for(i = BAND_MIN; i < BAND_MAX; i++){
    if(i < BAND_0)
        temp[i] *= wi->factors->fac_0;
    else if(i < BAND_1)
        temp[i] *= wi->factors->fac_1;
    else if(i < BAND_2)
        temp[i] *= wi->factors->fac_2;
    else if(i < BAND_3)
        temp[i] *= wi->factors->fac_3;
    else if(i < BAND_4)
        temp[i] *= wi->factors->fac_4;
    else if(i < BAND_5)
        temp[i] *= wi->factors->fac_5;
    else if(i < BAND_6)
        temp[i] *= wi->factors->fac_6;
    else if(i < BAND_7)
        temp[i] *= wi->factors->fac_7;
    else if(i < BAND_8)
        temp[i] *= wi->factors->fac_8;
    else if(i < BAND_9)
        temp[i] *= wi->factors->fac_9;
    else
        temp[i] *= wi->factors->fac_10;
}
