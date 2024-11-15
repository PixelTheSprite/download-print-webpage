# Instructions within the download-webpage.ps1 file:

1. Replace `$url` with the URL of the webpage you want to download.

2. Make sure the `$outputPath` exists or modify the path as needed.

3. Update the `$chromePath` to the location of your Chrome executable.

### This script will download the specified webpage and save it as a PDF in the specified output folder, with a filename that includes a timestamp for easy organization.

# Scheduling your script

You can use Task Scheduler to set up the PowerShell script as a scheduled task. Here’s how you can create a job to run the script at a specific time:

## Save your PowerShell script to a file, for example: `C:\Scripts\SaveWebpageAsPdf.ps1`.

## Open Task Scheduler and follow these steps to create a new task:

1. Open Task Scheduler

    - Press Windows + R, type `taskschd.msc`, and press Enter.

2. Create a New Task

    - In the Task Scheduler, click on **“Create Basic Task”** on the right-hand side.

3. Name Your Task

    - Give your task a name and description, then click Next.

4. Set the Trigger

    - Choose when you want the task to start (e.g., daily, weekly) and set the specific time.

5. Set the Action

    - Choose **“Start a program”** and click Next.

6. Select Program/Script

    - In the “Program/script” box, enter `powershell.exe`.

    - In the **“Add arguments (optional)”** box, enter the path to your PowerShell script, like this:
    
   ` -File "C:\Scripts\SaveWebpageAsPdf.ps1"`

7. Finish the Setup

    - Review your settings and click **Finish** to create the task.

### The Task Scheduler will now run your PowerShell script at the specific time, downloading the webpage as a PDF, saving it with a timestamp in the name, and then attempting to print it using the default printer on your machine.
