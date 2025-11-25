<div align="center">

# Fantasy Premier League CMS

</div>

<div>

    Fantasy Premier League (FPL) is the official free-to-play fantasy football game of the English Premier League. With over 11 million players, it is the largest fantasy football game of any domestic football league.

</div>

<div>
Our website allows you to alter the details of various players and even add new players into the database.
</div>

## Registration details

<div>
<p>For testing, please use the following email and pasword if you don't want to create a new one. Otherwise, you can register using your own email and password. These details will be stored in the user table.</p>

    Email: lipengcheng@example.com
    Password: Lipengcheng1117!

</div>

## How to get the data

<p>The database export file is in fpl_database/fpl_database.sql. Please import that file in your PHPMyAdmin to get our custom data.</p>

### Player Table

<p>Each player has the following details

    Full Name
    Position
    Price (in £millions)
    Points for the current gameweek
    Total Points till that gameweek
    Team

There are 4 positions in total: Forward(FWD), Midfield(MID), Defender(DEF), Goalkeeper(GK)

</p>

### Team Table

<p>Based on the team of the player, we will fetch the following data from the database and display it on the page. You don't need to worry about these details

    Team Name
    Stadium
    Manager Name

</p>






