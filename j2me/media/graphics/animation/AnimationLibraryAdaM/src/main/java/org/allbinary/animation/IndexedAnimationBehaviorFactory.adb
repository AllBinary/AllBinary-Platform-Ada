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


package body org.allbinary.animation.IndexedAnimationBehaviorFactory_Package is

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
      Initialize (This.all, loopTotal, frameDelayTime);
      return This;
   end Create;

   function getOrCreateInstance (This : in out IndexedAnimationBehaviorFactory) return AnimationBehavior_Access is
   begin
        return IndexedAnimationBehavior_Package.Create (This.loopTotal, This.frameDelayTime);
   end getOrCreateInstance;

   procedure getOrCreateInstance (This : in out IndexedAnimationBehaviorFactory) is
      Java_Result : constant AnimationBehavior_Access := IndexedAnimationBehaviorFactory'Class (This).getOrCreateInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrCreateInstance;

end org.allbinary.animation.IndexedAnimationBehaviorFactory_Package;


