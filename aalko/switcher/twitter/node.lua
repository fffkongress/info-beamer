local INTERVAL = 7

gl.setup(1550, 830)

json = require "json"

util.resource_loader{
    "jost.ttf";
    -- "white.png";
}

function wrap(str, limit, indent, indent1)
    limit = limit or 72
    local here = 1
    local wrapped = str:gsub("(%s+)()(%S+)()", function(sp, st, word, fi)
        if fi-here > limit then
            here = st
            return "\n"..word
        end
    end)
    local splitted = {}
    for token in string.gmatch(wrapped, "[^\n]+") do
        splitted[#splitted + 1] = token
    end
    return splitted
end

util.file_watch("tweets.json", function(content)
    tweets = json.decode(content)
    for idx, tweet in ipairs(tweets) do
        tweet.image = resource.load_image(tweet.image);
        tweet.lines = wrap(tweet.text, 50)
    end
end)

tweet_source = util.generator(function()
    return tweets
end)

function load_next()
    next_tweet = sys.now() + INTERVAL
    current_tweet = tweet_source:next()
end

load_next()

function node.render()
    if sys.now() > next_tweet then
        load_next()
    end
    
    jost:write(50, 50, "Tweete auch Du unter #Aalko", 100,1,1,1,1)
    current_tweet.image:draw(50, 245, 120, 315)
    jost:write(50, 175, current_tweet.time .. " Uhr", 70, 1,1,1,1)
    jost:write(140, 245, "@" .. current_tweet.user, 70, 1,1,1,1)
    for idx, line in ipairs(current_tweet.lines) do
        jost:write(50, 290 + idx * 60, line, 60, 1,1,1,1)
    end
end
