# OS-161-Utilities

### Few scripts that will make your life easier.

I personally used this when I took CS350 (and I finished the course pretty successfully too).

I made these scripts to make version control with github easier and load testing easier.

There are three scripts available. 

#### 1. compile.sh

```
./compile AssignmentFolder gitUser gitPass
```
For example,
```
./compile ASST2 gitUser gitPass
```

Make sure to run this in sys161 directory.

The script will automatically build and compile your OS and take you back to sys161 directory.

#### 2. load.sh

```
./load NumberOfRuns ExtraCommand
```
For example,
```
./load 1000 sy2;q
```

To run sy2;q 1000 times.
All error will be logged in error.log.

#### 3. randomTestb2b.py

```
python randomTestb2b.py NumberOfRuns
```
For example,
```
python randomTestb2b.py 1000
```

To run A2b tests 1000 times.
There are total of 7 tests and it will run them randomly 1000 times.
