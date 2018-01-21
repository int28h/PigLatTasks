-- Объединение двух файлов по адресу страницы

$ cat log.txt

YebwSJh https://stepic.org/ 1453656234
jsApOub https://google.ru/ 1453658723

Okjdvtd https://mail.ru/ 1453653381

tGjjGqQ https://facebook.com/ 1453653125

$ cat page.txt
https://google.ru/ Google 1453124213
﻿
﻿﻿https://twitter.com/ Twitter 1453653125﻿

﻿https://stepic.org/ Stepic 1453126528

https://mail.ru/ Mail.ru 1453128736 


log = LOAD 'log.txt' AS (user: chararray, url: chararray, ts: long);
page = LOAD 'page.txt' AS (url: chararray, title: chararray, ts: long);

result = JOIN log BY url, page BY url;

DUMP result;

--(Okjdvtd,https://mail.ru/,1453653381,https://mail.ru/,Mail.ru,1453128736)
--(jsApOub,https://google.ru/,1453658723,https://google.ru/,Google,1453124213)
--(YebwSJh,https://stepic.org/,1453656234,https://stepic.org/,Stepic,1453126528)