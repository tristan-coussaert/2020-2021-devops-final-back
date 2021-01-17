
#!/bin/bash
HEROKU_APP_NAME="calm-crag-04725"
HTTPCODE=`curl -s -o /dev/null -w "%{http_code}" https://$HEROKU_APP_NAME.herokuapp.com/api/articles`
if [ "$HTTPCODE" -ne 200 ];then
    echo "heroku app not responding, failing deploy"
    exit 1
fi