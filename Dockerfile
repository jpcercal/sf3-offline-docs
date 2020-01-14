FROM python:2.7

# http GET https://patch-diff.githubusercontent.com/raw/symfony/symfony-docs/pull/7347.patch
RUN pip install sphinx==1.3.4 git+https://github.com/fabpot/sphinx-php.git
RUN git clone --branch 3.0 --depth=1 https://github.com/symfony/symfony-docs.git /symfony-docs
RUN curl https://patch-diff.githubusercontent.com/raw/symfony/symfony-docs/pull/7347.patch -o /symfony-docs/7347.patch
RUN cd /symfony-docs && git apply 7347.patch

ENTRYPOINT ["make", "--directory=/symfony-docs/_build", "SPHINXOPTS=-nW -c /symfony-docs/_build", "BUILDDIR=/output"]
