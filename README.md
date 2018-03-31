# Label Generator

Random string serial ID label barcode generator using Glabels

Random string gnerated from `/dev/urandom`

## Requirements

- Linux (tested Ubuntu 16.04)
- Glables (tested 3.2.1)
- LPR printer

## Usage

Create Glabels label with merge field, see `openevse.glabels` example.

Either tun with default options
 
`$ ./label.sh`

Or specify options

`$ ./label <template.glables> <LPR printer>`

 
Serial numbers will be inserted into field and barcode generated. Automated printing is optional.

## Example

![](example.png)