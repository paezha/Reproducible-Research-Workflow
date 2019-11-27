# GEOG 712 Reproducible Research

## Session 11. `rticles` and practical issues: references and tables

Last session we used the package `rticles` to generate templates for writing self-contained, reproducible documents in the format of journal articles. We already had many of the necessary elements to do that; the key is the way an R Markdown document is set up, with a header in a particular way, and supporting style files that control the aspect of the output.

After last seminar you have the basics to write mathematical notation in LaTeX, as well as the fundamentals to place figures or, better yet, to generate figures within the document. In this session we will complement those skills with two additional features: references and tables.

### References

Actually, you already were using references for equations and figures. References work by pasing LaTeX pertinent information. In the case of equations, this worked by creating a label in an equation environment, for example:

```
\begin{equation}
\label{my-equation}
x + y = z
\end{equation}
```

In the case of figures generated as part of a chunk of code, the label was created as part of the option `fig.cap`, for example:

```
```{r sample-scatterplot, echo = FALSE, fig.cap = "\\label{my-plot} A Sample Scatterplot"}
ggplot(data = cars, aes(x = speed, y = dist)) + geom_point()

```

Once the item (equation or figure) have a label, you can refer to it by using the LaTeX command `\ref{}`. More generally, referencing objects works for chapters, sections, subsections, footnotes, equations, figures, and tables, and takes the following form:

Format | Use
-|-
`\label{marker}` | Used to give a _marker_ to an object. The _marker_ is a short, self-explanatory text, possibly accompanied of additional information; for instance `fig:` to identify figures, `tab:` to identify tables, and `eq:` to identify equations.
`\ref{marker}` | Used to reference the object corresponding to the _marker_; it will number the objects automatically.

### But what about bibliographic references?

Bibliographic references, on the other hand, work in a somewhat different way.

Recall that when the `rticle` template was created, a supporting file (possibly called `mybibfile.bib`) was created. This is a [BibTeX file](http://www.bibtex.org/). BibTeX is a reference management package that is used to process lists in conjunction with LaTeX. The `.bib` file contains bibliographical references in a specific format that looks like this:

```
@article{Paez2019demand,
  title={Demand and level of service inflation in Floating Catchment Area (FCA) methods},
  author={Paez, Antonio and Higgins, Christopher D and Vivona, Salvatore F},
  journal={PloS one},
  volume={14},
  number={6},
  year={2019},
  publisher={Public Library of Science}
}

```

There are definitions for different kinds of entries. The entry above, for example, is an article. There is an extensive list of [entry types](https://en.wikipedia.org/wiki/BibTeX#Entry_types), including "book", "conference", "incollection" (for chapters in edited books), "manual", and so on.

Each entry requires a unique _name_; in the example above, the name of the entry is `Paez2019demand`. It is common to use the last name of the first author, the year, and a keyword for this name, but this is not mandatory. After the name of the entry, come all relevant fields to reference the object. For an article, this would include the `title`, the `author`, which could be a list of authors separated by `and`, the `journal`, `volume`, `number`, and possibly `pages` of the article.

There are three formats for writing names of authors: "Eveline van Leeuwen", "van Leeuwen, Eveline", "van Leeuwen, III, Eveline" (in case Eveline had a [regnal number](https://en.wikipedia.org/wiki/Regnal_number)). See in the following examples Eveline van Leeuwen, Teresa de Norhonha Vaz, and John Paul Jones III:

```
@article{van2010multifunctional,
  title={The multifunctional use of urban greenspace},
  author={van Leeuwen, Eveline and Nijkamp, Peter and de Noronha Vaz, Teresa},
  journal={International journal of agricultural sustainability},
  volume={8},
  number={1-2},
  pages={20--25},
  year={2010},
  publisher={Taylor \& Francis}
}
```

```
@book{Casetti2003applications,
  title={Applications of the expansion method},
  author={Casetti, Emilio and Jones, III, John Paul},
  year={2003},
  publisher={Routledge}
}
```

In the case of institutional authors such as the United Nations, the World Health Organization, and such, the name is written between curly brackets to prevent the software from identifying parts of an institutional name as given names and last names. For example:

```
@article{Nations2014world,
  title={World urbanization prospects: The 2014 revision, highlights. department of economic and social affairs},
  author={{United Nations}},
  journal={Population Division, United Nations},
  year={2014}
}
```

It is very important that every field is followed by a comma! Failure to include the commas leads to errors that are a pain to debug, as my early experiences with BibTeX taught me.

### Obtaining references in the appropriate format

There are different ways of retrieving entries for a BibTeX file.

The simplest is to use Google Scholar. Search for the topic or item that you are interested in:

![Google Scholar search](Session-11-Figure-1.png)

Once you have found the reference that you want, click on the quotation mark:

![Getting a reference in Google Scholar](Session-11-Figure-2.png)

Then, in the window that pops up, select BibTeX. You can copy and paste the entry from there.

![Selecting BibTeX in Google Scholar](Session-11-Figure-3.png)

I often use Google Scholar, especially for references in the "gray" literature, that is, government reports, reports by international organizations, NGOs, etc., or for a more "shotgun" search. For more focused searches of the scientific and academic literature my preference is to use Web of Science (subscription needed, but most universities have access to this).

![Web of Science search](Session-11-Figure-4.png)

Once you have done a search, select the items that you wish to export and click the "Export" button:

![Selecting Web of Science items](Session-11-Figure-5.png)

This will give you the option to save in other file formats:

![Saving items in other file formats](Session-11-Figure-6.png)

Other file formats include BibTeX:

![Saving items in BibTeX format](Session-11-Figure-7.png)

I currently keep a hybrid reference management system. I continue to use EndNote to keep my references, and then I export from EndNote to BibTeX as needed. If you already use EndNote, this might work for you. The only thing that you need to do is select BibTeX Export as the format, before copying all selected references with formatting. You can then paste these references to you `.bib` file:

![Exporting in BibTeX format from EndNote](Session-11-Figure-8.png)

### In-text citations

The bibliography/list of references is generated automatically by the software, using the style defined in the `.csl` file. The bibliography will contain all references cited in the manuscript. There are different ways of citing references, as follows.

You can cite a reference in the text by using square brackets and the name of the entry preceded by the `@` symbol. For example, the text:

"According to recent research, urban green spaces serve multiple functions [see @van2010multifunctional; also @Reyes2014green]."

This would be rendered more or less in this fashion:

"According to recent research, urban green spaces serve multiple functions (see van Leeuwen et al., 2010; also Reyes et al., 2014)."

When referencing multiple entries at the same time, it is important to separate them by a semi-colon `;`. Don't forget the semi-colon!

It is also possible to use an in-text citation this way:

"According to @van2010multifunctional, urban green spaces serve multiple functions, a view that is echoed by other authors, including @Reyes2014green."

which would render as follows:

"According to van Leeuwen et al. (2010), urban green spaces serve multiple functions, a view that is echoed by other authors, including Reyes et al. (2014)."

As an alternative, a minus sign (i.e., `-`) before the `@` sign has the effect of suppressing the name(s) of the author(s) to render only the date:

"According to van Leeuwen et al. [-@van2010multifunctional], urban green spaces serve multiple functions, a view that is echoed by other authors, including Reyes et al. [-@Reyes2014green]."

### Tables

Tables are important elements in the presentation of research: they are used to summarize information in a form that is convenient and easy to understand. Creating tables using a word processor (\*cough\* Word \*cough\*) can be a pain due to strange behaviors when formatting cells, merging cells, etc. Furthermore, some tables need to be reproduced manually if the analyses change, something that is almost guaranteed to happen during the course of revisions, if not before.

Markdown has a simple way of creating tables, as we saw before in [Session 2](https://github.com/paezha/Reproducible-Research-Workflow/tree/master/Session-02-R-and-Markdown). This only requires the following format:

```
Header 1 | Header 2
- | -
Item 1 | Item 2
```

Which renders as:

Header 1 | Header 2
- | -
Item 1 | Item 2

There are several packages in `R` that are useful to create more sophisticated tables. My go-to package for this is `kableExtra`. The input for `kableExtra` is a dataframe, which is convenient because likely most of the information you need to tabulate is there, or is the result of analysis thereof.

A table can be generated in a chunk of code using `kableExtra` as follows:

```
```{r descriptive-statistics, echo=FALSE}
descriptive.df <- data.frame(Statistic = c("Mean", "Min", "Max", "Standard Deviation"),
                             Population = c(mean(energy_and_emissions$Population),
                                            min(energy_and_emissions$Population),
                                            max(energy_and_emissions$Population),
                                            sd(energy_and_emissions$Population)),
                             GDPPC = c(mean(energy_and_emissions$GDPPC),
                                       min(energy_and_emissions$GDPPC),
                                       max(energy_and_emissions$GDPPC),
                                       sd(energy_and_emissions$GDPPC)),
                             bblpd = c(mean(energy_and_emissions$bblpd),
                                       min(energy_and_emissions$bblpd),
                                       max(energy_and_emissions$bblpd),
                                       sd(energy_and_emissions$bblpd)),
                             CO2_1995 = c(mean(energy_and_emissions$CO2_1995),
                                       min(energy_and_emissions$CO2_1995),
                                       max(energy_and_emissions$CO2_1995),
                                       sd(energy_and_emissions$CO2_1995)),
                             CO2_2005 = c(mean(energy_and_emissions$CO2_2005),
                                       min(energy_and_emissions$CO2_2005),
                                       max(energy_and_emissions$CO2_2005),
                                       sd(energy_and_emissions$CO2_2005)),
                             CO2_2015 = c(mean(energy_and_emissions$CO2_2015),
                                       min(energy_and_emissions$CO2_2015),
                                       max(energy_and_emissions$CO2_2015),
                                       sd(energy_and_emissions$CO2_2015)))

kable(descriptive.df)
```

This gives the following table in the output:

![First not very successful example of table](Session-11-Figure-9.png)

As you can see, this is not a great-looking table. It is too wide and difficult to read. I can improve this table in several different ways.

## Suggested readings

[BibTeX](http://www.bibtex.org/)
[KableExtra for HTML](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html)
[KableExtra for PDF](https://haozhu233.github.io/kableExtra/awesome_table_in_pdf.pdf)