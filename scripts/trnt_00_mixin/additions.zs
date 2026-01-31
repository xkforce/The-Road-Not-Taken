#loader mixin
#modloaded additions
#norun

import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;

import native.com.tmtravlr.additions.addon.blocks.IBlockAdded;

// TODO: the ladder names still aren't localized

#mixin {targets: "com.tmtravlr.additions.addon.blocks.CommonBlockMethods"}
zenClass zenBlockAddedLadder {
    #mixin Static
    #mixin Inject {method: "getLocalizedName", at: {value: "HEAD"}}
    function mySetDisplayName(block as IBlockAdded, ci as CallbackInfoReturnable) as string {
        ci.setReturnValue("this is something else");
    }
}
