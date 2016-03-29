#!/usr/bin/env bash

for i in {1..1000000}
do
  sleep 1;
  curl 'http://zqyj.chinalaw.gov.cn/ajax/invoke' \
    -H "X-Forwarded-For: $i" \
    -H 'Pragma: no-cache' \
    -H 'Origin: http://zqyj.chinalaw.gov.cn' \
    -H 'Accept-Encoding: gzip, deflate' \
    -H 'Accept-Language: zh-CN,zh;q=0.8,en;q=0.6' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36' \
    -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
    -H 'Accept: */*' \
    -H 'Cache-Control: no-cache' \
    -H 'X-Requested-With: XMLHttpRequest' \
    -H 'Cookie: zqyj=20111116; 14_vq=2' \
    -H 'Connection: keep-alive' \
    -H 'Referer: http://zqyj.chinalaw.gov.cn/draftDetail?listType=2&DraftID=1011&PageIndex=8' \
    -H 'DNT: 1' \
    --data '_ZVING_METHOD=SupportOppose.voteOppose&_ZVING_URL=%252FdraftDetail&_ZVING_DATA=%7B%22ID%22%3A%2245114%22%7D&_ZVING_DATA_FORMAT=json' \
    --compressed 
done
