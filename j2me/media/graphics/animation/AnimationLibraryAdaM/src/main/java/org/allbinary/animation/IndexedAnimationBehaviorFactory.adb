-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package;

package body org.allbinary.animation.IndexedAnimationBehaviorFactory_Package is

   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out IndexedAnimationBehaviorFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out IndexedAnimationBehaviorFactory'Class; loopTotal : Integer; frameDelayTime : Long_Long_Integer) is
   begin
      AnimationBehaviorFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.loopTotal := loopTotal;
        This.frameDelayTime := frameDelayTime;
   end Initialize;

   function Create (loopTotal : Integer; frameDelayTime : Long_Long_Integer) return IndexedAnimationBehaviorFactory_Access is
      This : constant IndexedAnimationBehaviorFactory_Access := new IndexedAnimationBehaviorFactory;
   begin
      IndexedAnimationBehaviorFactory_Package.Initialize (This.all, loopTotal, frameDelayTime);
      return This;
   end Create;

   function getOrCreateInstance (This : in out IndexedAnimationBehaviorFactory) return AnimationBehavior_Access is
   begin
        return AnimationBehavior_Access (IndexedAnimationBehavior_Package.Create (This.loopTotal, This.frameDelayTime));
   end getOrCreateInstance;

end org.allbinary.animation.IndexedAnimationBehaviorFactory_Package;


