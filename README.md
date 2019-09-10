# "May 14, 2016" Twitter search tool

This was created to support [a collaborative project by Miranda July and Paul Ford with support from Starlee Kine as part of the Rhizome 7on7 project](https://vimeo.com/167171454).

![Here is a screenshot.](https://raw.githubusercontent.com/ftrain/may142016/master/doc/screenshot.jpg)

This is a Flask app and some utilities that load data into SQLite. Standard caveats about speed of development and general incompetence apply/but has the merit of working okay.

It makes it possible to search and browse historical tweets across a group of individuals. For example: Load in all the people in your Slack room, search their tweets for "dream," and recite their dreams back to them.

## Up and running:

- python 3 and make
- `pip install -r requirements.txt`
- put all the twitter handles in `data/foo.csv` (replace the `foo`)
- go get a [twitter API key](https://developer.twitter.com/en/apps)
- copy `config_template.py` to `config.py` and modify per that API key

- Run this
  - `make db=foo.db` (replace the `foo`)

Tweet importing will take a long time, many hours or days depending on your list of people, their prolixity, etc.

Run the app:

- `python app.py foo.db` (replace the `foo`)

## Notes

- Works fine under `gunicorn`.
- If you start to mess with it while the tweets are loading into SQLite it can skip tweets because SQLite wants none of that.
