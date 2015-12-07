# org

A set of shellscript helpers to aid you when using org-mode and not in
Emacs. Built due to lack of support for
[MobileOrg](http://mobileorg.ncogni.to/) in
[vim-orgmode](https://github.com/jceb/vim-orgmode), these shell scripts
will run `shasum` on your **.org** files and rebuild the **index.org**
file.

## Installation

Install from Homebrew:

    $ brew install tubbo/org

Install from source:

    $ git clone https://github.com/tubbo/org.git
    $ cd org
    $ make

You should now be able to run `org` commands from anywhere in your
shell.

## Usage

To update your MobileOrg account:

    $ org sync

To begin editing your org-mode files:

    $ org edit

## Development

Contributions should be made in a GitHub pull request.

### License

Copyright (c) 2015 Tom Scott

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

### Code of Conduct

As contributors and maintainers of this project, and in the interest of  
fostering an open and welcoming community, we pledge to respect all people who  
contribute through reporting issues, posting feature requests, updating  
documentation, submitting pull requests or patches, and other activities.

We are committed to making participation in this project a harassment-free  
experience for everyone, regardless of level of experience, gender, gender  
identity and expression, sexual orientation, disability, personal appearance,  
body size, race, ethnicity, age, religion, or nationality.

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery  
* Personal attacks  
* Trolling or insulting/derogatory comments  
* Public or private harassment  
* Publishing other's private information, such as physical or electronic  
  addresses, without explicit permission  
* Other unethical or unprofessional conduct  

Project maintainers have the right and responsibility to remove, edit, or  
reject comments, commits, code, wiki edits, issues, and other contributions  
that are not aligned to this Code of Conduct, or to ban temporarily or  
permanently any contributor for other behaviors that they deem inappropriate,  
threatening, offensive, or harmful.

By adopting this Code of Conduct, project maintainers commit themselves to  
fairly and consistently applying these principles to every aspect of managing  
this project. Project maintainers who do not follow or enforce the Code of  
Conduct may be permanently removed from the project team.

This code of conduct applies both within project spaces and in public spaces  
when an individual is representing the project or its community.

Instances of abusive, harassing, or otherwise unacceptable behavior may be  
reported by contacting a project maintainer at [INSERT EMAIL ADDRESS]. All  
complaints will be reviewed and investigated and will result in a response that  
is deemed necessary and appropriate to the circumstances. Maintainers are  
obligated to maintain confidentiality with regard to the reporter of an  
incident.

This Code of Conduct is adapted from the [Contributor Covenant][homepage],  
version 1.3.0, available at
[http://contributor-covenant.org/version/1/3/0/][version]

[homepage]: http://contributor-covenant.org
[version]: http://contributor-covenant.org/version/1/3/0/
