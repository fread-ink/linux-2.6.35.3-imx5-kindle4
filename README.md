
Status: Everything is compiling but not linking. It's currently failing on something related to mc13892.

This is an attempt at getting a slightly more modern kernel for the Amazon Kindles that are based on the Freescale i.MX 508. Right now this kernel is focused on the Kindle 4 NT since that's the simplest model. Later I plan to add support for all popular electronic paper ebook readers based on i.MX chipsets 50x or earlier.

The most recently updated version of the kernel for this chipset that I've been able to find is the [imx_2.6.35_maintain branch on freescale's linux-2.6-imx git repo](http://git.freescale.com/git/cgit.cgi/imx/linux-2.6-imx.git/?h=imx_2.6.35_maintain). It was last updated in November 2013. It doesn't compile out of the box for i.MX50x but I've fixed all of the problems that don't relate to board specific code. 

I've begun adding the Yoshi (code-name for Kindle 4th gen) sources from Amazon's linux-2.6.31 release and getting that working for the newer 2.6.35 kernel.

The incentive for doing this at all is that modern buildroot needs 2.6.32 or newer. I believe this is due to the modern version of binutils not supporting anything earlier.

Freescale also has a newer 3.x kernel in their git repo but the focus is definitely on the i.MX6 series (I'm not sure if it works for i.MX5 but it might) and Amazon has not released Yoshi sources for anything newer than 2.6.31.

For i.MX 6 there is a fully modern kernel in [the wandboard kernel repo](https://github.com/wandboard-org/linux) and at least board-specific code for the Kindles for some earlier 3.x kernels so I plan to create a different repo for i.MX 6 e-ink readers.

For the Linux kernel README see README.linux