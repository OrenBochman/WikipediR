% Generated by roxygen2 (4.0.2): do not edit by hand
\name{wiki_revision}
\alias{wiki_revision}
\title{Retrieves MediaWiki revisions}
\usage{
wiki_revision(con, revisions, properties = c("content", "ids", "flags",
  "timestamp", "user", "userid", "size", "sha1", "contentmodel", "comment",
  "parsedcomment", "tags"))
}
\arguments{
\item{con}{A connector object, generated by \code{\link{wiki_con}}, that corresponds to the
project you're trying to query}

\item{revisions}{The revision IDs of each desired revision.}

\item{properties}{Properties you're trying to retrieve about that revision, should you want to;
options include "ids" (the revision ID of the revision...which is pointless),
"flags" (whether the revision was 'minor' or not), "timestamp" (the timestamp of the revision,
which can be parsed with \code{\link{wiki_timestamp}}),"user" (the username of the person
who made that revision), "userid" (the userID of the person who made the revision),
"size" (the size, in uncompressed bytes, of the revision), "sha1" (the SHA-1 hash of
the revision text), "contentmodel" (the content model of the page, usually "wikitext"),
"comment" (the revision summary associated with the revision), "parsedcomment" (the same,
but parsed, generating HTML from any wikitext in that comment), "tags" (any tags associated
with the revision) and "flagged" (the revision's status under Flagged Revisions).}
}
\description{
Retrieves the content of a provided list of revisions from whichever MediaWiki instance you're
querying. Returns as wikimarkup.
}
\seealso{
\code{\link{wiki_con}}, \code{\link{wiki_diff}} for diffs between revisions,
and \code{\link{wiki_page}} for the content a specific page currently has.
}

