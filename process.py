log_file = open("um-server-01.txt") # opens "um-server-01.txt" and connects the two files together.


# def sales_reports(log_file): # The functiion we are creating/defining to find the sales report information located in the log_file "um-server-01.txt")
#     for line in log_file: # this is a for loop about the log_file("um-server-01.txt") 
#         line = line.rstrip() # it's removing trailing characters from the line in our code
#         day = line[0:3] # This is telling us the information of the line that we are wanting to use and manipulate.
#         if day == "Mon": # This is telling the computer if the day is equal to Monday to print out Monday's sales line.
#             print(line) # This is here to fire the information we asked for above and show us the information in the terminal.


# sales_reports(log_file) # firing the function above to make sure that we are seeing Monday's log files on their sales report

# EXTRA CREDIT
def melon_quantity(log_file):
    for line in log_file:
        line = line.split(' ')
        quantity = int(line[2])
        if quantity > 10:
            print(line)
melon_quantity(log_file)

    