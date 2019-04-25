#!/usr/bin/python3
#/Users/erikolby/anaconda3/bin/python3

"""mapper.py"""
import sys
import json
import re

searched_words = ["kvinnlig","manlig"]
for line in sys.stdin:
	if (line.strip()):
		parsed_json = json.loads(line)
		if("retweeted_status" not in parsed_json):
			for word in searched_words:
				# Här får vi om vi regexpar hejheeeeeee efter hej en hit, det vill vi inte! 
				twitter_text = parsed_json['text']
				reexpr = "\W"+word+"(\W|\Z|\s)"
				if (re.search(word, twitter_text,re.IGNORECASE)):
					print ('%s\t%s' % (word, 1))
			print('%s\t%s' % ("unique",1))