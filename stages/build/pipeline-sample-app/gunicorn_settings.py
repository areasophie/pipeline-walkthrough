import os

bind = '0.0.0.0:' + str(os.getenv('PORT', 5000))
proc_name = 'Pipeline Demo App'
workers = 2
threads = 4