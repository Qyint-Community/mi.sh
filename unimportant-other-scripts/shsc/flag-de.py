def german_flag_1():
    bar = ""
    for i in range(1):
        color = "40"
        line = f"\033[{color}m          \033[0m"
        bar += line
    return bar
def german_flag_2():
    bar = ""
    for i in range(1):
        color = "41"
        line = f"\033[{color}m          \033[0m"
        bar += line
    return bar
def german_flag_3():
    bar = ""
    for i in range(1):
        color = "43"
        line = f"\033[{color}m          \033[0m"
        bar += line
    return bar
print(german_flag_1())
print(german_flag_2())
print(german_flag_3())
