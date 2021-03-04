#!/usr/bin/env python3
import os
import csv
import argparse
from openpyxl import Workbook
from pathlib import Path
from sys import platform
from contextlib import contextmanager


@contextmanager
def read_csv(filename: str, delimiter: str = ','):
    try:
        csv_file = open(filename, 'r')
        csv_reader = csv.reader(csv_file)
        yield csv_reader
    finally:
        csv_file.close

def create_excel(csv_reader, filename, sheet_name: str = None):
    workbook = Workbook()
    sheet = workbook.active
    
    if sheet_name == None:
        sheet_name = 'Data'
    sheet.title = sheet_name

    for row in csv_reader:
        sheet.append(row)
    
    workbook.save(filename=filename)

def is_macos():
    return platform == 'darwin'

def open_file(filename):
    if not is_macos():
        print('ERR: can only open files on macOS')
        return
    os.system(f'open -R {filename}')

def main(args):
    with read_csv(args.from_file, args.delimiter) as csv_reader:
        create_excel(csv_reader, args.to_file, args.sheet_name)
    if args.open:
        open_file(args.to_file)

    print(f'Saved file to {args.to_file}')

def set_to_if_from_is_empty(args):
    if args.to_file == None:
        from_path = Path(args.from_file)
        to_filename = str(from_path.with_suffix('.xlsx'))
        vars(args)['to_file'] = to_filename

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Convert CSV files to Excel files')
    parser.add_argument('--from', '-f', type=str, required=True, help='CSV filename')
    parser.add_argument('--to', '-t', type=str, help='Excel filename')
    parser.add_argument('--delimiter', '-d', type=str, default=',', help='Set another delimiter than default ,')
    parser.add_argument('--sheet-name', '-s', type=str, help='Specify the sheet name')
    parser.add_argument('--open', '-o', action='store_true', help='Open file in Finder after')

    args = parser.parse_args()
    vars(args)['from_file'] = vars(args)['from']
    vars(args)['to_file'] = vars(args)['to']
    del vars(args)['from']
    del vars(args)['to']
    set_to_if_from_is_empty(args)

    main(args)

