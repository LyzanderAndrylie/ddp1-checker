# Meminta konfirmasi pembuatan folder
echo "Apakah ingin mendapatkan output dari solusi? [y/n]"
read masukan

echo "Output untuk lab/tp berapa? [LabXX/TPXX] (case-sensitive)"
read tipe

if [[ $masukan == "y" ]]; then
    x=1

    for input in solusi/"$tipe"/input/input?.txt
    do
        cat $input | py solusi/"$tipe"/*.py > solusi/"$tipe"/output/output$x.txt
        ((x=x+1))
    done
else
    echo "Output solusi tidak dibuat"
fi

file="nama_mahasiswa_sort.txt"

echo "Apakah ingin mendapatkan output dari mahasiswa? [y/n]"
read masukan

if [[ $masukan == "y" ]]; then
    while read -r line
    do
        x=1
        nama=$(echo $line | tr -d '\r')

        for input in solusi/"$tipe"/input/input?.txt
        do
            cat $input | py lab-dan-tp-mahasiswa/"$nama"/*$tipe*.py > lab-dan-tp-mahasiswa/"$nama"/tmp-result/output$x.txt
            ((x=x+1))
        done
    done < $file
else
    echo "Output mahasiswa tidak dibuat"
fi