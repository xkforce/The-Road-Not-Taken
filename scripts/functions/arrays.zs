#loader preinit contenttweaker crafttweaker
#priority 11111101

/**
 * Merges multiple arrays into one.
 * @param arrays The array of arrays to merge.
 * @return The merged array.
 */
global mergeStringArray as function(string[][])string[] = function(arrays as string[][]) as string[] {
    var result as string[] = [];
    for array in arrays {
        for item in array {
            result += item;
        }
    }
    return result;
};

/**
 * Merges multiple arrays into one, removing duplicates.
 * @param arrays The array of arrays to merge.
 * @return The merged array representing a set.
 */
global uniqueStringArray as function(string[][])string[] = function(arrays as string[][]) as string[] {
    var result as string[] = [];
    for array in arrays {
        for item in array {
            if (!result.contains(item)) {
                result += item;
            } else {
                warn("Duplicate entry found in string array: " + item);
            }
        }
    }
    return result;
};

/**
 * Filters an array of strings by another array of strings.
 * @param array The array to filter.
 * @param toRemove The array of string arrays to remove from the array.
 * @return The filtered array.
 */
global filterStringArray as function(string[], string[][])string[] = function(array as string[], toRemove as string[][]) as string[] {
    var result as string[] = [];
    val removalSet as string[] = mergeStringArray(toRemove);
    for item in array {
        if (!removalSet.contains(item)) {
            result += item;
        }
    }
    return result;
};


/**
 * Converts an array of strings to lower case.
 * @param array The array to convert.
 * @return The converted array.
 */
global lowerStringArray as function(string[])string[] = function(array as string[]) as string[] {
    var result as string[] = [];
    for item in array {
        result += item.toLowerCase();
    }
    return result;
};
