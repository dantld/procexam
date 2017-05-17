In this project you can see a lot of Makefiles.
I can ask: Why I need use so many makefiles?
Now I can explain.

In the beginning of my sofwatre engeener I had
start to use makefiles and command line build
not from first time beacause I was fanat of 
IDE`s, like Borland C++ (Turbo C/C++), Microsft
Quick C and so on. After while I`ll see the 
Makefiles. It was like wonderfull. They does not
reuire full install of IDE and you need only core:
preprocessor, compiler, asembler, linker and of
cause make utility! So I`d start to use only 
makefile. First time I try build my programm using
only one makefile ))), today it sound crazyness!
You need build dependencies, compile and assemble
source code, build libraries and executables, make
a distro, test your programm, clean projects ...
So many task! And I`ve decide to divide some 
tasks by different makefiles. Especially for
this time I`d familiriaze your selft with GNU make
it was like super-trooper maker comapring with
nmake, wmake etc.

So my main makefiles is:

Makefile.include:
	In many projects on Linux system it real file 
	with all required settings about gcc compilers
	and linkers keys. So this file describe the tools.
	When I need build my project on other UNIX systems
	like HP-UX, IBM AIX etc. I`ve just use this name
	as soft link only which point on real makefile
	with suffix pointed on a specific compiler, platform
	or bothe.

Makefile.project
	It dedicated to store only specific variables and 
	actions. For example path to installations of specific
	libraries or tools for your project.

Makefile.utils
	Specific GNU make implicit rules or dependencies
	generation which also specific to GNU maker.

Makefile.version
	Specific to version name of tarball, executables,
	libraries and etc. generation process. It can be
	contains something static, dynamic from you source
	control system or both. This specific does not
	covered by this project.

