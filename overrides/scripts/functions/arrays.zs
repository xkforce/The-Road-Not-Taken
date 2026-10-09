#loader preinit contenttweaker crafttweaker
#priority 1110

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
                log.trace(`Duplicate entry found in string array: ${item}`);
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

/**
 * Converts an array of strings to upper case.
 * @param array The array to convert.
 * @return The converted array.
 */
global upperStringArray as function(string[])string[] = function(array as string[]) as string[] {
    var result as string[] = [];
    for item in array {
        result += item.toUpperCase();
    }
    return result;
};

/**
 * Transforms an array of strings by replacing a template.
 * @param array The array to transform.
 * @param transform The template to replace.
 * @return The transformed array.
 */
global transformStringArray as function(string[], string)string[] = function(array as string[], transform as string) as string[] {
    var result as string[] = [];
    for item in array {
        result += transform.replace("<TEMPLATE>", item);
    }
    return result;
};

/**
 * Create a new array from 2 arrays with all values that are in both arrays.
 * @param array1 The first array.
 * @param array2 The second array.
 * @return The new array.
 */
global intersectStringArray as function(string[], string[])string[] = function(array1 as string[], array2 as string[]) as string[] {
    var result as string[] = [];
    for item in array1 {
        if (array2.contains(item)) {
            result += item;
        }
    }
    return result;
};
