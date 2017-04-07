# gitshu
> Convert Git commit descriptions to Issues

When you make a push to `master` branch, commits with description such as:

    Solving this thing, but with some new problems
    
    New Issue: NotImplementedError in ThisClass.processRecord
    I didn't have the time to implement everything needed:
    * Test fails but is ignored
    * Another piece of code is potentially not thread-safe
    
    New Issue: Fix breaking OtherClass
    I had to break specification functionality
    in order to achieve this task.

Then `gitshu` will create two new Issues. The first one will have
the title `NotImplementedError in ThisClass.processRecord` and body:

    New Issue: NotImplementedError in ThisClass.processRecord
    I didn't have the time to implement everything needed:
    * Test fails but is ignored
    * Another piece of code is potentially not thread-safe

# Use cases

Bug-driven development:
* [Wikipedia article](https://en.wikipedia.org/wiki/Bug-driven_development)
* [Oracle article](https://blogs.oracle.com/toddfast/entry/bug_driven_development)

It's not just writing code and fixing bugs.

You can actually write up your specification in Git, and with every new change,
create an issue saying that the specification is not met by the code.

It is perfect in incremental development scenarios.

Now your Git history starts looking better and you focus on 
creating issues straight from your local environment instead of having to juggle
many different UIs.

# Use

Yes, it's serverless. You don't need to expose your private contents to anyone.

[![Launch CloudFormation Stack](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=lambci&templateURL=https://lambci.s3.amazonaws.com/templates/lambci.template)
