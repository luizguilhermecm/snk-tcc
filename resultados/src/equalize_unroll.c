for(i = BAND_MIN; i < BAND_0; i += 2){
    temp[i] *= wi->factors->fac_0;
    temp[i + 1] *= wi->factors->fac_0;
}
for(i = BAND_0; i < BAND_1; i += 2){
    temp[i] *= wi->factors->fac_1;
    temp[i + 1] *= wi->factors->fac_1;
}
for(i = BAND_1; i < BAND_2; i += 2){
    temp[i] *= wi->factors->fac_2;
    temp[i + 1] *= wi->factors->fac_2;
}
for(i = BAND_2; i < BAND_3; i += 2){
    temp[i] *= wi->factors->fac_3;
    temp[i + 1] *= wi->factors->fac_3;
}
for(i = BAND_3; i < BAND_4; i += 2){
    temp[i] *= wi->factors->fac_4;
    temp[i + 1] *= wi->factors->fac_4;
}
for(i = BAND_4; i < BAND_5; i += 2){
    temp[i] *= wi->factors->fac_5;
    temp[i + 1] *= wi->factors->fac_5;
}
for(i = BAND_5; i < BAND_6; i += 2){
    temp[i] *= wi->factors->fac_6;
    temp[i + 1] *= wi->factors->fac_6;
}
for(i = BAND_6; i < BAND_7; i += 2){
    temp[i] *= wi->factors->fac_7;
    temp[i + 1] *= wi->factors->fac_7;
}
for(i = BAND_7; i < BAND_8; i += 2){
    temp[i] *= wi->factors->fac_8;
    temp[i + 1] *= wi->factors->fac_8;
}
for(i = BAND_8; i < BAND_9; i += 2){
    temp[i] *= wi->factors->fac_9;
    temp[i + 1] *= wi->factors->fac_9;
}
for(i = BAND_9; i < BAND_MAX; i += 2){
    temp[i] *= wi->factors->fac_10;
    temp[i + 1] *= wi->factors->fac_10;
}
