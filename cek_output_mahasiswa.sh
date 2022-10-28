# Meminta konfirmasi Pengecekan
echo "Apakah ingin mengecek output solusi dengan output mahasiswa? [y/n]"
read masukan

echo "Output untuk lab/tp berapa? [LabXX/TPXX] (case-sensitive)"
read tipe

echo "nama mahasiswa: (case-sensitive + hanya nama depan bisa) "
read nama

echo "Pengecekan dilakukan satu-satu atau sekaligus semua? [1/all]"
read pilihan

if [[ $masukan == "y" && $pilihan == "all" ]]; then
    x=1

    for output in solusi/"$tipe"/output/output?.txt solusi/"$tipe"/output/output??.txt
    do
        echo
        echo "========================================================================"
        echo "Output solusi:"
        cat $output

        echo
        echo "Output Mahasiswa: "
        cat lab-dan-tp-mahasiswa/"$nama"*/tmp-result/output$x.txt

        echo "========================================================================"
        echo

        ((x=x+1))

    done
elif [[ $masukan == "y" && $pilihan == "1" ]]; then
    x=1

    for output in solusi/"$tipe"/output/output?.txt solusi/"$tipe"/output/output??.txt
    do
        echo
        echo "========================================================================"
        echo "Output solusi:"
        cat $output

        echo
        echo "Output Mahasiswa: "
        cat lab-dan-tp-mahasiswa/"$nama"*/tmp-result/output$x.txt

        echo "========================================================================"
        echo

        ((x=x+1))

        echo "Next? [y/n]"
        read pilihan

        if [[ $pilihan == "n" ]]; then
            # Skip entire rest of loop.
            break;
        fi

    done
else
    echo "Output tidak dicek"
fi
