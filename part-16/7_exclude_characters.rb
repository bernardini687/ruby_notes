# [] inside // to specify sort of an array of interested matches

listen_to = "Soa Booe iT aeR Koe aT ou aee, 09."
p listen_to.scan /[SBTRKT]/
# => ["S", "B", "T", "R", "K", "T"]

# [^] exclude
p listen_to.scan /[^aeiouAEIOU,\d\s\.]/
# => ["S", "B", "T", "R", "K", "T"]
