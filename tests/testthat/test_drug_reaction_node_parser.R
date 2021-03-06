context("test drug reaction attributes parsers")

library(dbparser)
library(testthat)
library(XML)
library(tibble)
library(purrr)


test_that(desc = "Read database",
          code = {
            expect_true(get_xml_db_rows(
              system.file("extdata", "drugbank_record.xml", package = "dbparser")
            ))
          })

test_that(desc = "Read darug reactions attributes",
          code = {
            expect_equal(nrow(parse_drug_reactions()),
                         0)
            expect_error(parse_drug_reactions(TRUE))
          })

test_that(desc = "Read darug reactions enzymes attributes",
          code = {
            expect_equal(nrow(parse_drug_reactions_enzymes()),
                         0)
            expect_error(parse_drug_reactions_enzymes(TRUE))
          })
