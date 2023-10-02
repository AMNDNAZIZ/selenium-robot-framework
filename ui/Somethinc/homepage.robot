*** Settings ***
Resource    ../../config/website.robot


*** Variables ***

#Pop UP "SUBSCRIBE NOW!"
${Pup UP SUBSCRIBE NOW}                id:
${Button Close Popup SUBSCRIBE NOW}    id:wrap-close-button-1454703513202
${Tittle Homepage}    "SOMETHINC Official Website | Makeup & Skincare Products"


*** Keywords ***
Buka Browser
    Open Browser    browser=${Chrome}    url=${Homepage Somethinc}
    Title Should Be    title=${Tittle Homepage}