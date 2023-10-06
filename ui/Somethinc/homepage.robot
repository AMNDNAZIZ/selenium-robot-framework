*** Settings ***
Resource    ../../config/website.robot


*** Variables ***

#Pop UP "SUBSCRIBE NOW!"
${Pup UP SUBSCRIBE NOW}                id:text-16401899939110
${Button Close Popup SUBSCRIBE NOW}    id:wrap-close-button-1454703513202
${Tittle Homepage}    SOMETHINC Official Website | Makeup & Skincare Products
${Kategory Makeup}    xpath:/html/body/div[1]/div[2]/div/div[1]/div/div/div/div[1]/div[2]/ul/li[2]/a
${Makeup Subkategory = Eyeshadow}    xpath:/html/body/div[1]/div[2]/div/div[1]/div/div/div/div[1]/div[2]/ul/li[2]/div/div/div/div/ul/li[1]/a
${Halaman Eyeshadow}    xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[1]/div[1]/h1
# ${Product SURREAL Star Loose Pigment}    xpath://html/body/div[2]/div[3]/div/div/div[2]/div[2]/div/div[4]/div/a/img[@title='${Nama Produk}']
${Halaman SURREAL Star Loose Pigment}    xpath:/html/body/div[2]/div[1]/div[1]/div[2]/div/div[3]/div/h1

${Kategory}
*** Keywords ***
Buka Web Somethinc
    Open Browser    browser=${Chrome}    url=${Homepage Somethinc}
    Maximize Browser Window
    Title Should Be    title=${Tittle Homepage}
    Wait Until Element Is Visible    ${Pup UP SUBSCRIBE NOW}    20s
    ${POPUP SUBSCRIBE}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Pup UP SUBSCRIBE NOW}
    IF  '${POPUP SUBSCRIBE}' == 'True'
        Click Element    ${Button Close Popup SUBSCRIBE NOW}
    END

Posisi Mouse di Katogori
    [Arguments]    ${nama kategory}
    Set Suite Variable    ${Kategory}    link:${nama kategory}
    Wait Until Element Is Visible    locator=${Kategory}    timeout=30s
    Mouse Over    locator=${Kategory}
    Sleep    time_=10s

Klik Subkategory
    [Arguments]    ${nama sub kategory}
    ${Subkategory}=    Set Variable    link:${nama sub kategory}
    ${Cek Available Subkategory}=    Run Keyword And Return Status   Wait Until Element Is Visible    ${Subkategory} 
    IF  '${Cek Available Subkategory}' == 'True'
        Click Element    ${Subkategory}
        Element Should Be Visible    locator=${Halaman Eyeshadow}  
    ELSE
        Click Element    ${Kategory}
    END
    
Klik SURREAL Star Loose Pigment
    [Arguments]    ${nama product}
    # ${Klik Produk}    Set Variable    xpath://html/body/div[2]/div[3]/div/div/div[2]/div[2]/div/div[4]/div/a/img[@title='${nama product}']
    ${Klik Produk}    Set Variable    xpath://img[@title='${nama product}']
    Click Element    ${Klik Produk}
    Element Should Be Visible    ${Halaman SURREAL Star Loose Pigment}

Cari Produk
    [Arguments]    ${nama kategory}    ${nama sub kategory}    ${nama product}
    Buka Web Somethinc    
    Posisi Mouse di Katogori    ${nama kategory}
    Klik Subkategory    ${nama sub kategory}
    Klik SURREAL Star Loose Pigment    ${nama product}
