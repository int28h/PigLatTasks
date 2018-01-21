-- из бэга log удаляет поле uid, а поля ts и url меняет местами.

log = LOAD ‘log.txt' AS (url: chararray, uid: chararray, ts: long);
DUMP log;

--(stepic.org,HDdvYgA,1453654300)
--(google.ru,fUGjjqL,1453656234)
--(mail.ru,wJllQwo,1453650390)
--(hadoop.apache.org,opIUUqw,1453651432)

urls = FOREACH log GENERATE ts, url;
DUMP urls;

--(1453654300,stepic.org)
--(1453656234,google.ru)
--(1453650390,mail.ru)
--(1453651432,hadoop.apache.org)