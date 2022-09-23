import time


def get_current_time_as_string(self):
    localtime = time.localtime()
    formatted_time = time.strftime("%Y%m%d%H%M%S", localtime)
    return formatted_time
