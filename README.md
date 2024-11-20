This project is meant to showcase a functioning CICD setup using the DESY FWK and cocotb for simulation.

For any questions, email: asingh2@bnl.gov

You should note that in order to use this project, you must create your own repo and copy these files into that repo.
This is because you will need to setup your own runner and modify the GitHub Actions yml file to your own setup.

Also, to run this project you will need to make sure you have GHDL installed on your runner or local machine (depending on how you run the project).
You can also modify some files to make the simulation run with another simulator, but that could be tedious.
Any other dependancies should be taken care of by the "make env" command run by the DESY FWK.

One last thing is that at the moment code coverage results are not provided by the CICD pipeline.
However, you can get code coverage results if you run the project locally and have the correct environment setup.

How to use this project:

    First clone over the repo and run the following command:

        source setup.sh

    This will get everything setup for you. There are lines at the bottom of the script that are commented out.
    This is because I currently do not have code coverage working with CICD, but it does run locally.
    Because this is just a test project, you can uncomment these lines to get code coverage results locally.
    Or you can just leave them commented to see the CICD pipeline work properly.

    Taking a look at the yml file under .github/workflows you can see how the CICD is setup.
    For this project, CICD will only trigger if the app_demo_top.vhd file is modified.
    You can see that when the CICD is triggered, it automatically runs "source setup.sh"
    It then creates a cocotb project and simulates the DUT using the testbench written in python.
    The pipeline then checks the results file to see if the tests were passed.

    I recommend breaking the vhdl file to see the CICD fail.

    This is of course a very simple project. A more advanced project would consist of a design with many levels in it's hierarchy.
    In this case, there would be many testbenches and corresponding project files to link everything.
    There would also be more yml files to automate all the testing.

    I hope to have such an example up soon. Hopefully I will also have code coverage working with CICD as well.
