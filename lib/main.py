import datetime

APPEND_MODE = 'a'

entry_datetime = datetime.datetime.now()
today = entry_datetime.strftime('%Y-%m-%d')
now = entry_datetime.strftime('%H:%M:%S')

entries = open('./entries', APPEND_MODE)
entries.write('{};{}\n'.format(today, now))
entries.close()

print('{}@{}'.format(today, now) )
