## Virtual Environment

1.   Install the python3 `virtualenv` module using `pip3`

     ```bash
     pip3 install --user virtualenv
     ```

1.   Using `virtualenv` to create a virtual environment called **venv**

     ```bash
     virtualenv --no-site-packages venv
     ```

1.   Enter the virtual environment using `source` command

     ```bash
     source venv/bin/activate
     ```

1.   Leave the virtual environment

     ```bash
     deactivate
     ```
