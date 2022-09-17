# Meminta konfirmasi pembuatan folder
echo "Apakah ingin membuat folder awal? [y/n]"
read masukan

if [[ $masukan == "y" ]]; then

    mkdir tmp-submission

    # Pembuatan masing-masing folder Lab
    for i in {01..10}
    do
        mkdir -p solusi/Lab$i/input
        mkdir -p solusi/Lab$i/output
    done

    for i in {01..04}
    do
        mkdir -p solusi/TP$i/input
        mkdir -p solusi/TP$i/output
    done
    
else
    echo "Folder tidak dibuat"
fi