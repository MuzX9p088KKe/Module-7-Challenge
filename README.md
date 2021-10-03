# Employee Database Analysis


## Overview of the analysis:
We were taske with analyzing a company's employee database. As this company is really large and has been around for quite some time, a growing number of employees are getting close to retirement age. In order to not disrupt operations, the company decided to plan ahead and attempt to determine how many employees would need to be hired and trained in order to replace the workers nearing retirement.

In order to do so, after the company provided us with the database, an analysis was conducted as follows:
* Created a list of employees nearing retirement age buy filtering birth dates and also added a filter to ensure they were still currently employed.

* Extracted the titles these employees were holding and calculated the total amount of departing employees for each title

* Created a list of current employees with some seniority who were eligible to mentor the future new hires.


## Results: 
* The criteria provided to detewrmine which workers were to be included in the retiring group was fairly straightforward: All employees born between 1952 and 1955 were to be included as long as they were still employed at the time of the analysis. After the data was filtered, there seemed to be a pretty large amount of people fitting the criteria, over 90,000 of them.

* As a simple list of all employees would still be much too large to be useful considering how many people actually fit these criteria, a table grouping the employees by title seemed like the best way to capture where there would be gaps in the company's ranks.

![retiring_titles](https://user-images.githubusercontent.com/76575162/121808222-18f8ab80-cc1d-11eb-98a6-97f715cb15c2.png)

The above table reflected which titles the soon-to-be retirees and their count.

* After analyzing which roles the departing employees held, it seemed like a large number of them are senior-level positions which would require quite a few years with the company to be trained properly. 

* Lastly, a list of workers eligible for the mentoring program was put together. The goal was to filter all current employees born in 1965 to add them to the list of potential mentors who would train the next wave of new hires. It resulted in a list of 1549 employees which can be accessed [HERE.](https://github.com/MuzX9p088KKe/Module-7-Challenge/blob/main/Data/mentorship_eligibility.csv)


## Summary: 

* How many roles will need to be filled as the "silver tsunami" begins to make an impact?

  Assuming they all stay employed until retirement age, older employees retrirements will open a total of 90,398 vacancies over a five-year period. Among those vacancies, as mentioned above, many of them are senior-level positions which require ample time and training with the company.
  When comparing the titles which will become vacant as seen on the left table to those of all employees excluding the soon-to-be retirees group as seen on the right table:

![retiring_titles](https://user-images.githubusercontent.com/76575162/121808222-18f8ab80-cc1d-11eb-98a6-97f715cb15c2.png) ![non_retiring_titles](https://user-images.githubusercontent.com/76575162/121810179-6547e980-cc25-11eb-805b-af97316400a3.png)

  It becomes clear that although around 30% of employees holding senior roles will be retiring within a five-year time frame, there are still plenty of employees to choose from to train and fill these vacancies, leaving the entry-level jobs to be filled with new hires.


* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of employees?
  As the list of potential mentors itself provided very little insight inot whether or not each title would have a sufficient amount of mentors, a table grouping the employees by title was created in other to better analyze the distribution by title:

![mentors_by_title](https://user-images.githubusercontent.com/76575162/121810546-f075af00-cc26-11eb-8553-1f6363c09c74.png)

  Considering the large amount of vacancies to come, this seemed like a very small group of employees to take on the incredible volume of new hire training to come. As the criteria were to include current+ employees born in 1965 only and the birth date seemed too restrictive, a wider range was picked arbitrarily from 1964 to 1969 for the sake of demonstration. This resulted in a much higher number of potential mentors as seen in this table:

![improved_mentors_by_title](https://user-images.githubusercontent.com/76575162/121810727-93c6c400-cc27-11eb-9e9f-aa8964839587.png)

  Therefore, as long as the criteria for mentorship eligibility are not too restrictive, it seems that promoting current employees from entry to senior-level jobs over the next few years through the mentorship program and training new hires as they come along may be enough to counter the impact of the so-called "silver tsunami" this company will experience.




