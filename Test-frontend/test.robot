*** Settings ***
Resource          ../common.robot

*** Test Cases ***
EmailLogin : User login invalid passoword should Fail
  Login Facebook  ${email_ogin}  ${password_login}  Log into Facebook
