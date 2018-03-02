# Using cron in OSx

### Here some example for running Ruby script with cron.

I created Ruby script for take information from website `parser_ruby.rb`

Each time when running script i save it in CSV file.

Lets do for start this file automatically 


List of shedule in crontab 

```
$crontab -l
```
Edit cron file with Nano editor in terminal

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
