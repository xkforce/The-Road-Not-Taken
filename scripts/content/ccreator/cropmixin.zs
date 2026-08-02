#loader mixin
#mixin by Nischi

import native.net.minecraft.item.Item;
import native.net.minecraft.item.ItemSeedFood;
import native.net.minecraft.block.Block;
import native.net.minecraft.init.Blocks;

#mixin {targets: "surreal.contentcreator.common.block.generic.BlockGenericCrop"}
zenClass BlockGenericCropMixin { # func_77655_b = setTranslationKey
 #mixin Shadow
 var cropID as string;

 #mixin WrapOperation 
 #{
 #  method: "createItem",
 #  at: {value: "INVOKE", target: "Lnet/minecraft/item/Item;func_77655_b(Ljava/lang/String;)Lnet/minecraft/item/Item;"}
 #}
 #mixin Local{argsOnly:true}
 function zenutils_eatCrops(instance as Item, key as string, original as mixin.Operation, block as Block) as Item {
   if(this0.cropID == "contenttweaker:arugala") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:blackcarrot") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:lavendercarrot") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:purplecarrot") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:redcarrot") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());          
   if(this0.cropID == "contenttweaker:whitecarrot") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:yellowcarrot") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:cassava") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:chickpea") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());            
   if(this0.cropID == "contenttweaker:ginger") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:peanut") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:orangepineapple") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:pinkpineapple") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:whitepineapple") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:yellowpineapple") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());            
   if(this0.cropID == "contenttweaker:blackpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());            
   if(this0.cropID == "contenttweaker:bluepotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:brownpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:orangepotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:purplepotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:redpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:whitepotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());            
   if(this0.cropID == "contenttweaker:blacksweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:brownsweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:orangesweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:pinksweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:purplesweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:redsweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());            
   if(this0.cropID == "contenttweaker:rosesweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:whitesweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:yellowsweetpotato") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());
   if(this0.cropID == "contenttweaker:taro") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());     
   if(this0.cropID == "contenttweaker:wasabi") 
     return ItemSeedFood(3, 0.5, block, Blocks.FARMLAND).setRegistryName(block.getRegistryName());    
   return original.call(instance, key);
 }
}
