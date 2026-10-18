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



package body org.allbinary.animation.AnimationBehaviorFactory_Package is

   procedure Initialize_Fields (This : in out AnimationBehaviorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationBehaviorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationBehaviorFactory_Access is
      This : constant AnimationBehaviorFactory_Access := new AnimationBehaviorFactory;
   begin
      AnimationBehaviorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnimationBehaviorFactory_Access is
   begin
        return AnimationBehaviorFactory_Package.instance;
   end getInstance;

   function getOrCreateInstance (This : in out AnimationBehaviorFactory) return AnimationBehavior_Access is
   begin
        return AnimationBehavior_Package.getInstance;
   end getOrCreateInstance;

begin
   null;
   instance := AnimationBehaviorFactory_Package.Create;

end org.allbinary.animation.AnimationBehaviorFactory_Package;


