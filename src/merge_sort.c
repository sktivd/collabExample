#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>

typedef int (* compare_t)(double, double);

/* return 1 when left item should be chosen to archieve ascending order */
int compare_ascending(double l, double r) {
	if (l > r) {
		return 0;
	} 
	return 1;
}

/* return 1 when right item should be chosen to archieve descending order */
int compare_descending(double l, double r) {
	if (l < r) {
		return 0;
	}
	return 1;
}

/* two arrays are merged by ordered */
void merge_items(double* left, int lengthOfLeft, double* right, int lengthOfRight, double* merged, compare_t compare) {
	int lp = 0, rp = 0, mp = 0;

	while (lp < lengthOfLeft && rp < lengthOfRight) {
		if (compare(left[lp], right[rp])) {
			merged[mp] = left[lp];
			lp++;
		} else {
			merged[mp] = right[rp];
			rp++;
		}
		mp++;
	}
	if (rp >= lengthOfRight) {
		for (; lp < lengthOfLeft; mp++, lp++) {
			merged[mp] = left[lp];
		}
	} else if (lp >= lengthOfLeft) {
		for (; rp < lengthOfRight; mp++, rp++) {
			merged[mp] = right[rp];
		}
	}
}

SEXP merge_sort(SEXP unsorted, SEXP ascending) {
	int lengthOfUnsorted = length(unsorted);
	SEXP sorted = PROTECT(allocVector(REALSXP, lengthOfUnsorted));
	double* buffer = (double*) R_alloc(lengthOfUnsorted * 2, sizeof(double));
	double* ip = REAL(unsorted), * op = buffer;
	compare_t compare;
	
	if (asLogical(ascending) == 0) {
		compare = compare_descending;
	} else {
		compare = compare_ascending;
	}
	
	for (int width = 1, count = 1; width < lengthOfUnsorted; width *= 2, count++) {
		for (int i = 0; i < lengthOfUnsorted; i += (2 * width)) {
			double* o = op + i, * p1 = ip + i, * p2 = ip + i + width;
			int w1 = width, w2 = width;
			if (i + width > lengthOfUnsorted) {
				w1 = (lengthOfUnsorted - i > 0) ? (lengthOfUnsorted - i) : 0;
			}
			if (i + 2 * width > lengthOfUnsorted) {
				w2 = (lengthOfUnsorted - i - width > 0) ? (lengthOfUnsorted - i - width) : 0;
			}
			merge_items(p1, w1, p2, w2, o, compare);
		}
		ip = op;
		if (width * 4 >= lengthOfUnsorted) {
			op = REAL(sorted);								/* last */
		} else {
			op = buffer + (count % 2) * lengthOfUnsorted;			
		}
	}
	
	UNPROTECT(1);
	return sorted;
}
