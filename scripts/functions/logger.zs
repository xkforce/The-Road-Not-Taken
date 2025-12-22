#loader preinit contenttweaker crafttweaker
#modloaded zenutils
#priority 1111111

global msg as function(string)string = function(message as string) as string {
    return `[${modpackName}] ${message.replace("*", "'")}`;
};

global info as function(string)void = function(message as string) as void {
    logger.logInfo(msg(message));
};

global warn as function(string)void = function(message as string) as void {
    logger.logWarning(msg(message));
};

global error as function(string)void = function(message as string) as void {
    logger.logError(msg(message));
};
