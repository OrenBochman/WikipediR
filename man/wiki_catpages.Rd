% Generated by roxygen2 (4.0.2): do not edit by hand
\name{wiki_catpages}
\alias{wiki_catpages}
\title{Retrieves a list of category members.}
\usage{
wiki_catpages(con, categories, properties = c("title", "ids", "sortkey",
  "sortkeyprefix", "type", "timestamp"), type = c("page", "subcat", "file"))
}
\arguments{
\item{con}{A connector object, generated by \code{\link{wiki_con}}, that corresponds
to the project you're trying to query.}

\item{categories}{The names of the categories you want to gather information for.}

\item{properties}{The properties you want to gather for each member of the category.
Options are "title" (the name of the member, including namespace),
"id" (the unique numeric identifier of the member), "sortkey"
(the hexadecimal key used to sort that member within the category),
"sortkeyprefix" (the human-readable sort key), "type"
(whether the member is a page, a subcategory or a file) and
"timestamp" (when the member was added to the category)}

\item{type}{The type of member you're interested in returning;
options are any permutation of "page" (pages), "subcat" (subcategories) and "file" (files).}
}
\description{
wiki_catpages retrieves a list of pages, subcategories, files or all of the above
in a specified category (or series of specified categories)
}
\section{warnings}{

Because of the way MediaWiki stores this data, both "the category you asked for doesn't exist"
and "the category you asked for exists, but has no members" return in the same way.
}
\seealso{
\code{\link{wiki_pagecats}} for finding categories that a specified page is a member of.
}

