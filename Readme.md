# DockerFile

FROM - hansi image uzerinde yigilacaqdir yeni image.
RUN - image yigilarken yeni yigilma sirasinda hansi komanda icra olunsun. misal ucun hansisa tool-u install ede bilerik image yigilma sirasinda.
CMD - docker image yaradilan zaman image-de hansi komanda icra olunacagini bildirir. misal ucun daima ping atan image yaratmaq olar.
ENTRYPOINT - CMD komandasi ile oxsasada esas ferqleri ENTRYPOINT-in "docker run image:tag komanda" buna oxsar olaraq yaradilmasidir. Image yaradanda komanda olaraq "  ENTRYPOINT [ "/bin/ping" ] " -teyin edirik. Yaradilan image-in adini murad:tag olaraq dusunek.  "docker run gsengun/myubuntu:0.2 8.8.8.8" buradan gorunurki yaradilan containere fikir versek ping komandasi qeyd olunmayib. Ferqleri bundan ibaretdir. CMD image ile calisasacaq default komanda, ENTRYPOINT ise container calisan zaman verilen komandadir.
RUN - hostdan ve ya internetden hansisa fayl ve ya direktoriyani image-e koplayamaq olar. Elave olaraq kopyalanmasini istenilmeyen fayllar .dockerignore faylinda qeyd olunur.
COPY - RUN komandasi ile eyni funksiyani dasiyir yalniz internetden hansisa fyali yuklemir.
WORKDIR - bu komanda ozunden sonra gelen RUN, CMD, ENTRYPOINT, COPY ve ADD komandalarina tesir edir. Misal ucun "WORKDIR /app/src" icra edirik ardinca ise "ADD [ "file.txt" , "file-1.txt" ]" icra edirik. Yeni islenilen ne varsa  /app/src direktoriyasinda aparilsin. Burada da file.txt fayli hostdan /app/src/file-1.txt faylina copyalanir. 