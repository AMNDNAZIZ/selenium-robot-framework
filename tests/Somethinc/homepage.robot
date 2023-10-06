*** Settings ***
Resource    ../../ui/Somethinc/homepage.robot
Test Template    Cari Produk
Test Teardown    Close Browser


*** Test Cases ***        NAMA KATEGORI    NAMA SUBKATEGORI        NAMA PRODUK
Cari New Arrival          New Arrival      BASIC SKINCARE SERIES   SKIN GOALS Moisture Silk Cremè
Cari Makeup               Makeup           EYESHADOW               Self Love Eye Shadow Palette - Hello Kitty Edition
Cari Makeup - 02          Makeup           EYESHADOW               THE NOBLES Eyeshadow Palette Volume 2
Cari Skincare             Skincare         SKIN SOLVER SERUM       5% Mandelic Acid Mild Exfoliating Serum
Cari Bodycare             Bodycare         BODY CREAM              Bakuchiol R-Cover Firming Body Crème
Cari Haircare             Haircare         ${EMPTY}                No Wonder 8 Seconds Hair Treatment Water
Cari Tools & Merchandise    Tools & Merchandise    BLENDIE & PUFF    NONI Bouncy Blender Set
Cari Collaboration        Collaboration    Somethinc x Shinchan Tahilalats    SKIN GOALS Moisture Silk Cremè - Shinchan x Tahilalats                        

