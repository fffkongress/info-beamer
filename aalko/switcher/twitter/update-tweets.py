import sys
import json
from urllib.error import HTTPError
import twitter
from urllib.request import urlopen
import datetime
import pprint


api = twitter.Api(consumer_key="", consumer_secret="", access_token_key="", access_token_secret="")
hashtag = "#Aalko"


tweets = [dict(
    user=tweet.user.screen_name,
    text=tweet.text,
    image=tweet.user.profile_image_url,
    time=datetime.datetime.fromtimestamp(tweet.created_at_in_seconds).strftime("%H:%M"),
) for tweet in api.GetSearch(hashtag)]

for n, tweet in enumerate(tweets):
    img = "profile-image%02d" % (n + 1)
    out = open(img, "wb")
    try:
        out.write(urlopen(tweet['image']).read())
        tweet['image'] = img
    except HTTPError:
        tweet['image'] = "profile-default"
    
    out.close()
    pprint.pprint(tweet)

open("tweets.json", "wb").write(json.dumps(tweets, ensure_ascii=False).encode("utf8"))
