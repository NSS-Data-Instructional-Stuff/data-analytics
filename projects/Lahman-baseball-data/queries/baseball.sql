/*
1. What range of years does the provided database cover?
1871 - 2016

2. Find the name and height of the shortest player in the database. 
How many games did he play in? 
What is the name of the team for which he played?
"43"	"Eddie"	"Gaedel"  1   St.Louis Browns

3. Find all players in the database who played at Vanderbilt University. 
Create a list showing each player’s first and last names 
as well as the total salary they earned in the major leagues. 
Sort this list in descending order by the total salary earned. 
Which Vanderbilt player earned the most money in the majors?
David Price - $245,553,888

4. Using the fielding table, group players into three groups based on their position: 
label players with position OF as "Outfield", 
those with position "SS", "1B", "2B", and "3B" as "Infield", 
and those with position "P" or "C" as "Battery". 
Determine the number of putouts made by each of these three groups in 2016.
"41424"	"Battery"
"58934"	"Infield"
"29560"	"Outfield"

5. Find the average number of strikeouts per game by decade since 1920. 
Round the numbers you report to 2 decimal places. 
Do the same for home runs per game. Do you see any trends?

6. Find the player who had the most success stealing bases in 2016, 
where success is measured as the percentage of stolen base attempts which are successful. 
(A stolen base attempt results either in a stolen base or being caught stealing.) 
Consider only players who attempted at least 20 stolen bases.

7. From 1970 – 2016, what is the largest number of wins for a team 
that did not win the world series? 
What is the smallest number of wins for a team that did win the world series? 
Doing this will probably result in an unusually small number of wins 
for a world series champion – determine why this is the case. 
Then redo your query, excluding the problem year. 
How often from 1970 – 2016 was it the case that a team with the most wins 
also won the world series? What percentage of the time?

8. Using the attendance figures from the homegames table, 
find the teams and parks which had the top 5 average attendance per game in 2016 
(where average attendance is defined as total attendance divided by number of games). 
Only consider parks where there were at least 10 games played. 
Report the park name, team name, and average attendance. 
Repeat for the lowest 5 average attendance.

9. Which managers have won the TSN Manager of the Year award 
in both the National League (NL) and the American League (AL)? 
Give their full name and the teams that they were managing when they won the award.

*/

--1
--Select min(year) as from, max(year) as to from homegames;

-- 2
-- Select p.height, p.namefirst, p.namelast, 
-- min(a.yearid) as first_year_played, a.g_all as games_played, t.name
-- from people as p join appearances as a on p.playerid = a.playerid
-- join teams as t on t.teamid = a.teamid
-- where p.height = (select min(height) from people)
-- group by p.height, p.namefirst, p.namelast, a.g_all, t.name;

--3
/*
Select p.namefirst, p.namelast, sum(s.salary) as total_salary
from people as p join collegeplaying as c on p.playerid = c.playerid
--join schools as sch on c.schoolid = sch.schoolid 
join salaries as s on p.playerid = s.playerid
where c.schoolid = 'vandy' 
group by p.namelast, p.namefirst
order by total_salary desc;
*/
/*
--4
Select 
sum(f.po)as total_putouts,
(case when f.pos = 'OF' then 
     'Outfield'
      when f.pos in ('SS', '1B', '2B', '3B') then 	
     'Infield'
 	 else 
 	 	'Battery'
	 end) as position
from fielding f;
where yearid = 2016
group by position;
*/
/*
5. 
with bins as (
    		SELECT generate_series(1920, 2010, 10) as lower,
    		   generate_series(1930, 2020, 10) as upper),
     games as (
    		SELECT yearid, sum(g)/2 as total_games from teams
    		group by yearid),
     strikeouts as (
    		SELECT yearid, 
			sum(SO) as total_strikeouts from batting
    		group by yearid)
SELECT lower, 
	   upper, 
	   round((sum(total_strikeouts)/sum (total_games))::NUMERIC,2) as strikeouts_per_game
FROM bins LEFT JOIN games
ON games.yearid >= lower AND games.yearid < upper
LEFT JOIN strikeouts
ON strikeouts.yearid >= lower AND strikeouts.yearid <     upper
group by lower, upper
order by lower; 
*/

select * from teams
	where w = (select max(w)
			   from teams
			   where wswin = 'N' and yearid >= 1970)
	and wswin = 'N' and yearid >= 1970;
	
select * from teams
	where w = (select min(w)
			   from teams
	           where wswin = 'Y' and yearid >= 1970)
	and wswin = 'Y' and yearid >= 1970;
	
--Note: this finds the 1981 LA Dodgers. But, 1981 was a short season due to a strike.
/*	
select * from teams
	where w = (select min(w)
			   from teams
	           where wswin = 'Y' and yearid >= 1970 and yearid != 1981)
	and wswin = 'Y' and yearid >= 1970 and yearid != 1981;
	
select t.yearid, t.teamid, t.w, t.wswin
	from teams as t
	inner join (select  yearid, max(w) as max_wins
		        from teams
	            where yearid >= 1970
		        group by yearid) as sub
	on t.yearid = sub.yearid and t.w = sub.max_wins
	order by t.yearid;
	
select t.wswin, count(*)
from teams as t
inner join (select  yearid, max(w) as max_wins
		    from teams
	        where yearid >= 1970
	        group by yearid) as sub
	on t.yearid = sub.yearid and t.w = sub.max_wins
	group by t.wswin; 
*/

select p.park_name, t.name, h.attendance/h.games as avg_attendance 
from homegames as h
	inner join
	parks as p
	on p.park = h.park
	inner join
	teams as t
	on t.teamid = h.team
where h.year = 2016 and h.games >= 10 and t.yearid = 2016
order by avg_attendance desc
limit 5;