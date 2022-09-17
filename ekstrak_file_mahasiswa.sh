file="nama_mahasiswa_sort.txt"

# Meminta konfirmasi Pengekstrakan
echo "Apakah ingin mengekstrak file mahasiswa [y/n]"
read masukan


# Ekstrak DDP1 gradebook zip
unzip tmp-submission/"DDP1"*.zip -d tmp-submission

if [[ $masukan == "y" ]]; then
    while read -r line
    do
        nama=$(echo $line | tr -d '\r')

        unzip tmp-submission/"$nama"*/*.zip -d lab-dan-tp-mahasiswa/"$nama"

    done < $file
else
    echo "Ekstrak tidak dilakukan"
fi