*** Settings ***
Library           AppiumLibrary
Resource    ./common.robot

*** Variables ***
${PLATFORMNAME_RESOURCE}    Android
${PLATFORMVERSION_RESOURCE}    8.0
${DEVICENAME_RESOURCE}    ce061716c3eec8120d7e      #2f08fa27
${REMOTEURL_RESOURCE}    http://localhost:4723/wd/hub
${APP_RESOURCE}    /Users/peerapoltapeng/Work/qa-sdk/TopBarSDK/Test/Sanity/App/TestUserPanel.apk
${APPNAME_RESOURCE}    com.truecorp.sdk.test.userpanel

${USER_NOPOINT}    0875913949
${PASSWORD_NOPOINT}    0875913949
${USER_NOMAPPINGTHAIID}    0917485279
${PASSWORD_NOMAPPINGTHAIID}    sdk13579
${USER_TRUECARD}    0820866500
${PASSWORD_TRUECARD}    11111111
${USER_TEST_TRUECARD}    0917499756
${PASSWORD_TEST_TRUECARD}    sdk13579

#${USERNAME_RESOURCE}    tests1@test.com
#${PASSWORD_RESOURCE}    1234testtest
#${BASIC_USERNAME}     test.trueuser2@gmail.com
#${BASIC_PASSWORD}     trueuser
#
#${APPNAME_RESOURCE}    com.tdcm.trueidapp
#${WAITAPPACTIVITY}    ${WAITAPPACTIVITY_RESOURCE}
#${WAITAPPACTIVITY_RESOURCE}    .views.pages.intro.NewIntroActivity, .views.pages.main.MainActivity
#
#${INCORRECT_PASS_RESOURCE}    1234sss
##Windows User
#${APP_RESOURCE}    /Users/thitimasukprasert/dp-qa2/Documents/App/Android/TrueID/Prod/TrueID_Prod.apk
##OSX User
##${APP_RESOURCE}    ../com.tuc.trueid.apk
#${WAITAPPACTIVITY_RESOURCE}    .views.pages.intro.NewIntroActivity, .views.pages.main.MainActivity

################################################