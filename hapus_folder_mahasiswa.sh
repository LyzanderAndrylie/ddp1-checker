# Meminta konfirmasi penghapusan folder
echo "Apakah ingin menghapus semua folder? [y/n]"
read masukan

if [[ $masukan == "y" ]]; then
    rm -r lab-dan-tp-mahasiswa
else
    echo "Folder tidak dibuat"
fi