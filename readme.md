# NISMOD: Teaching Kit

This repository contains the teaching material developed by University of Oxford
for the course "Infrastructure and Climate Resilience" developed under the
Climate Compatible Growth project.

The course is published on [Open Learn Create](https://www.open.edu/openlearncreate/course/view.php?id=7243)
and is free to learners.

The course material is licensed under a [Creative Commons BY 4.0 License](https://creativecommons.org/licenses/by/4.0).
This license allows you to use, remix and publish the course material as long as you give correct
attribution.  Please use the following citation:

    Amelie Paszkowski, Daniel Adshead, Sapphire Vital, Orlando Roman, Lena Fuldauer, Prof Jim W Hall, Raghav Pant, Sarah Gall, Olivia Becher, Aman Majid, Jasper Verschuur, Robyn Haggis, Yu Mo, & Nicholas Chow. (2021, August 6). ClimateCompatibleGrowth/nismod_teaching_kit: Initial release of lecture blocks. Zenodo. https://doi.org/10.5281/zenodo.5166742

## Creating the teaching material

The teaching material is rendered to HTML using a bash script.
A key dependency is [pandoc](https://pandoc.org/), which is used to convert the markdown lecture block files into HTML.

1. To generate the HTML files in the `_build` folder, run:

        bash scripts/create_html.sh

2. To create a SCORM package for each of the lecture blocks, you'll need the Python package [scorm_package](https://github.com/ClimateCompatibleGrowth/scorm_package). Then navigate to the `_build` folder and run for each of the lecture blocks. For example:

        scorm lecture17 lecture_17 17

    creates a zip archive `lecture17` from the material in folder `lecture_17`.
    This creates folders containing the following special files for a SCORM package:

        adlcp_rootv1p2.xsd
        ims_xml.xsd
        imscp_rootv1p1p2.xsd
        imsmanifest.xml
        imsmd_rootv1p2p1.xsd
        res
    For more information, check
    out the documentation in the `scorm_package` or the command-line interface help:

    ```bash
    usage: scorm [-h] package_name html_resource lecture_block_number

    Creates a SCORM package from a folder of HTML files

    positional arguments:
    package_name          Scorm package name e.g. 'Lecture Block 1'
    html_resource         Path to the folder containing HTML files to package
    lecture_block_number  The number of the lecture block

    optional arguments:
    -h, --help            show this help message and exit
    ```

3. Unfortunately, there's a bug in scorm_package which doesn't create the correct format for a SCORM package. A SCORM package needs the `.xsd` files in the root of the zipped archive. To deal with this, follow this procedure:

    1. Unzip the folder created by the command-line utility
    2. `cd` into the folder
    3. Create a zipped archive of the files

