# Steps to be followed

**1.Configure to your aws console**

**2.And Connect to your EC2 instance**

![Screenshot (1009)](https://github.com/user-attachments/assets/83e50d4a-633d-43ad-9ea4-db068ae525ab)

## We have the following services running in our Aws Console

**An Ec2 instance**

![Screenshot (1005)](https://github.com/user-attachments/assets/a730017f-317e-4da8-aa1f-a107995b294b)

**An s3 Bucket**

![Screenshot (1033)](https://github.com/user-attachments/assets/827f404e-26af-4b2a-ab46-16d5b928606b)

**An IAM user**

![Screenshot (1034)](https://github.com/user-attachments/assets/b1d1f843-0d51-4b6b-9635-2a32d3297692)

**3.Writing the shell script**

![Screenshot (1018)](https://github.com/user-attachments/assets/c6a02172-73d8-4f66-9a08-5c83d77273ca)

**4.We have to run the shell script by using following shell commands**


```
chmod 777 resource_tracker.sh
./resource_tracker.sh
```

**5.Here is the output**

![Screenshot (1019)](https://github.com/user-attachments/assets/f1dc3936-f077-4f49-a5ef-17f9938ed171)

**6.Now we are going to integrate this shell script to a cron tab so that we can run this at anytime based on our requirements**

```
realpath resource_tracker.sh
```

**You will get the output as => /home/ubuntu/resource_tracker.sh**


```
chmod +x /home/ubuntu/resource_tracker.sh
crontab -e
```

**Now select the editor of your choice ,here we select nano**


![Screenshot (1020)](https://github.com/user-attachments/assets/ccf50505-6cb6-4f0e-9eb4-84111be7265f)

**7.To write a cron function we have to get inside the crontab,for that use the below command**

```
crontab -e
```

**This is the cron function we are using , it will run the shell script at 9:18 at september 27 , we can also run a cron job every day , since it is just a project ,i am adjusting it for only one day**


```
18 9 27 9 * /home/ubuntu/resource_tracker.sh >> /home/ubuntu/resource_tracker.log 2>&1

```

**Now write this command to know what you have written inside the cron job**

```
crontab -l
```

**After writing this , press ctrl+o  to save and crtl+x to exit**


![Screenshot (1030)](https://github.com/user-attachments/assets/480ee552-8aa6-45fd-ae4f-3706faec5387)


**8.Finally we got our cron job run at the specified time**


![Screenshot (1032)](https://github.com/user-attachments/assets/56ac42dd-2a9e-46e0-b89b-7f642bff7090)















