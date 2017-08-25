+context("functions")
+
+test_that("Wish someone good luck", { 
+        expect_output(sayGoodLuck("Hans"), "Good Luck, Hans")
+})
