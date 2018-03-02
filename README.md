# Using cron in OSx

Here some example for running Ruby script with cron.

list of shedule in crontab 

```
$crontab -l
```
edit cron file with Nano editor in terminal

```
$env EDITOR=nano crontab -e

```
Add this line to crontab file:

```
0/5 * * * *  cd /Users/denis/Desktop/swedbank_parse && ruby parser_ruby.rb
```

Time and day adjustment `0/5 * * * *`  here example for each 5 minute.

```
* * * * * выполняемая команда
- - - - -
| | | | |
| | | | ----- День недели (0 - 6) (Воскресенье =0 или =7)
| | | ------- Месяц (1 - 12)
| | --------- День (1 - 31)
| ----------- Час (0 - 23)
------------- Минута (0 - 59)
```
Change directory for running script `cd /Users/denis/Desktop/swedbank_parse`

And Running ruby script `&& ruby parser_ruby.rb`

More information about cron https://ru.wikipedia.org/wiki/Cron
