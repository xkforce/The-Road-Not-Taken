#loader preinit contenttweaker crafttweaker
#modloaded zenutils
#priority 11111110

/**
 * Prints a message to the log.
 * @param message The message to print.
 * @return The message.
 */
global msg as function(string)string = function(message as string) as string {
    return `[${modpackName}] ${message.replace("*", "'")}`;
};

/**
 * Prints a message to the log as info.
 * @param message The message to print.
 */
global info as function(string)void = function(message as string) as void {
    logger.logInfo(msg(message));
};

/**
 * Prints a message to the log as warning.
 * @param message The message to print.
 */
global warn as function(string)void = function(message as string) as void {
    logger.logWarning(msg(message));
};

/**
 * Prints a message to the log as error.
 * @param message The message to print.
 */
global error as function(string)void = function(message as string) as void {
    logger.logError(msg(message));
};
