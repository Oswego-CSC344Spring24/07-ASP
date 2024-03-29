# Seeknumbers Project

You can find the instructions of the project in the file [seeknumbers.ipynb](seeknumbers.ipynb).

To submit your solution, please modify the file [seeknumbers.lp](asp/seeknumbers.lp) of the directory [asp](asp) with your encoding.

Every time you push a new commit, your solution will be tested automatically.
The timeout per instance is `180` seconds, and
the actual command call for the test is:
* ``python asp/test.py -e asp/seeknumbers.lp -i asp/instances -s asp/solutions -t 180``

For help, type `python asp/test.py --help`.

After a few minutes you will be able to see the result of the test in the **Actions** tab.
You can get more information about the result of the test from "clingo results details"

For each instance, you will see if the test is a:
* "success" (correct answer),
* "failure" (wrong answer),
* "timeout" (no solution found before the time runs out), or
* "error" (clingo error).
