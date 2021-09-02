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

2. To create a SCORM package for each of the lecture blocks, you'll need the Python package [scorm_package](https://github.com/ClimateCompatibleGrowth/scorm_package). Then run the deployment script::

        bash scripts/deploy.sh

    This creates a zip archive for each lecture e.g. for `lecture17` from the material in folder `lecture_17`.
    Each zip files contains the following special files for a SCORM package:

        adlcp_rootv1p2.xsd
        ims_xml.xsd
        imscp_rootv1p1p2.xsd
        imsmanifest.xml
        imsmd_rootv1p2p1.xsd
        res  # This contains the lecture blocks and assets (image files)

# Common formatting issues

## References

- Ensure that reference authors are formatted as follows:

        Joe Bloggs and Tracy Ervin Smith
        Bloggs, J. and Smith, T.~E.

## Images

- SCORM packages seem to be very sensitive to the case of filenames.
  Always use lower-case for file endings and ensure that filenames referenced in the lectures exactly match the filename.
  For example `assets/Figure_1.1.1.PNG` will not be linked if `![](assets/Figure_1.1.1.png)` is used to embed the image.
- Images should be of a good enough resolution to be viewed across 100% width of the text column.
  Use `![](assets/Figure_1.1.1.png){width=100%}` to adjust this.
