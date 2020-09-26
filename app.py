#!/usr/bin/env python
import click

@click.command()
def hello():
  click.echo('Hello and welcome to docker!')
  
if __name__ == '__main__':
  hello()
