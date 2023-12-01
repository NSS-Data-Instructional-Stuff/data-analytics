### Data Dictionary

# `episodes.csv`

|variable                |class     |description             |
|:-----------------------|:---------|:-----------------------|
|season                  |integer   |The season number.      |
|episode_overall         |integer   |The overall count of this episode, from 1-300.|
|episode_season          |integer   |The count of this episode within this season.|
|title                   |character |The title of the episode.|
|original_release        |date      |The date on which the episode was originally available on YouTube.|
|guest                   |character |The name of the guest. |
|guest_appearance_number |integer   |The number of appearances by this guest so far as of this date. |
|finished                |logical   |Whether the guest finished trying all of the sauces. |

# `sauces.csv`

|variable     |class     |description  |
|:------------|:---------|:------------|
|season       |integer   |The season number. |
|sauce_number |integer   |The number of this sauce, from 1 (least hot) to 10 (hottest). |
|sauce_name   |character |The name of the sauce. |
|scoville     |integer   |The rating of the sauce in [Scoville heat units](https://en.wikipedia.org/wiki/Scoville_scale). |

# `seasons.csv`

|variable         |class     |description      |
|:----------------|:---------|:----------------|
|season           |integer   |The season number. |
|episodes         |integer   |The count of episodes in this season. |
|note             |character |Notes about this season. |
|original_release |date      |The date of the first episode in this season. |
|last_release     |date      |The date of the last episode of this season (if that episode has aired at the time of scraping). |