list=(\
# PonyTail
"Stable-diffusion,https://civitai.com/api/download/models/290640?type=Model&format=SafeTensor&size=pruned&fp=fp16 "\
"VAE,https://civitai.com/api/download/models/290640?type=VAE&format=SafeTensor "\
"Lora,https://civitai.com/api/download/models/450029 "\
"Lora,https://civitai.com/api/download/models/418297 "\
)
for i in $list
do 
    OLDIFS=$IFS
    IFS=','
    set -- $i
    echo $1 $2
    # wget -P stable-diffusion-webui/models/$1 "$2&token=$CIVIT_AI_API_KEY" --content-disposition
    # wget -P stable-diffusion-webui/models/$1 "$2" --content-disposition
    IFS=$OLDIFS
done; 
