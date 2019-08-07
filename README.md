# LocalStack and Testing 2️⃣

## Prerequisites

* Python (I'm using 3.6.6)
* PyCharm/some IDE
* Docker + docker-compose

## Running LocalStack and Tests

With the encapsulation of LocalStack and the Python tests, we can now run both in 3 commands. Run the following within the root of the repository:

```
$ mkdir .localstacktmp
$ docker-compose build
$ env TMPDIR=.localstacktmp docker-compose run test bash -c "cd s3_lambda && pytest -s ."
```

**Note:**

You may find that the tests fail on the first round, this will likely be because the LocalStack _stack_ has not  fully started up. So far the best bet is to just re-run the last command.


