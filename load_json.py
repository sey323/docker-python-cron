# coding: utf-8
import json
import tensorflow as tf

f = open( '/test.json' )
json_data = json.load( f )
f.close()

print( json_data )
