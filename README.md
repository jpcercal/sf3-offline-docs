This project aims to generate the Symfony 3.0 documentation in epub format. 

Note that, the epub file was already generated and you can download it directly by following [this link](https://github.com/jpcercal/sf3-offline-docs/raw/master/output/epub/SymfonyFrameworkDocumentation.epub) meaning that there's no need to install it if your intention is just to generate the epub file. =D

# If you still want to, how to install it?

The first thing that has to be done is to create a docker build, you can reach this goal by executing the following line of code on your terminal:

```
docker build --tag=symfony-docs-builder .
```

Now, you just have to execute the following code in order to generate the epub file:

```
docker run --rm -v "${PWD}/output:/output" symfony-docs-builder epub
```

It will process all the documentation files from [symfony/symfony-docs](https://github.com/symfony/symfony-docs/tree/3.0) and in the end it will put your desired file on `output/epub/SymfonyFrameworkDocumentation.epub`.

I hope it helps you! =D
