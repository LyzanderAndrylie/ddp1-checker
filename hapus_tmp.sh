# Meminta konfirmasi penghapusan folder
echo "Apakah ingin menghapus semua folder dalam tmp? [y/n]"
read masukan

if [[ $masukan == "y" ]]; then
    rm -r tmp-submission/*
else
    echo "Folder tidak dibuat"
fi