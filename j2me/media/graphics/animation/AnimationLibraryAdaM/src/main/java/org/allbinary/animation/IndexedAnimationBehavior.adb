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


package body org.allbinary.animation.IndexedAnimationBehavior_Package is

   procedure Initialize_Fields (This : in out IndexedAnimationBehavior'Class) is
   begin
      null;
      
      
      This.elapsedTime := 0;
      This.loopIndex := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out IndexedAnimationBehavior'Class; loopTotal : Integer; frameDelayTime : Long_Long_Integer) is
   begin
      AnimationBehavior_Package.Initialize (This);
      Initialize_Fields (This);
        This.loopTotal := loopTotal;
        This.frameDelayTime := frameDelayTime;
   end Initialize;

   function Create (loopTotal : Integer; frameDelayTime : Long_Long_Integer) return IndexedAnimationBehavior_Access is
      This : constant IndexedAnimationBehavior_Access := new IndexedAnimationBehavior;
   begin
      IndexedAnimationBehavior_Package.Initialize (This.all, loopTotal, frameDelayTime);
      return This;
   end Create;

   procedure reset (This : in out IndexedAnimationBehavior) is
   begin
        This.loopIndex := 0;
   end reset;

end org.allbinary.animation.IndexedAnimationBehavior_Package;


