#loader preinit contenttweaker crafttweaker
#priority 10000

// Strings

global mergeStringArray as function(string[][])string[] = function(arrays as string[][]) as string[] {
    var result as string[] = [];
    for array in arrays {
        for item in array {
            result += item;
        }
    }
    return result;
};

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

global lowerStringArray as function(string[])string[] = function(array as string[]) as string[] {
    var result as string[] = [];
    for item in array {
        result += item.toLowerCase();
    }
    return result;
};
