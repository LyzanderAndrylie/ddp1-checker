file="nama_mahasiswa_sort.txt"

# Meminta konfirmasi pembuatan folder
echo "Apakah ingin membuat folder baru [y/n]"
read masukan

if [[ $masukan == "y" ]]; then
    while read -r line
    do
        nama=$(echo $line | tr -d '\r')
        mkdir -p ./lab-dan-tp-mahasiswa/"$nama"/tmp-result/
    done < $file
else
    echo "Folder tidak dibuat"
fi