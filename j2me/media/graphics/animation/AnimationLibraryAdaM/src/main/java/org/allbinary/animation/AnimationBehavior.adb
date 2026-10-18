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



package body org.allbinary.animation.AnimationBehavior_Package is

   procedure Initialize_Fields (This : in out AnimationBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationBehavior_Access is
      This : constant AnimationBehavior_Access := new AnimationBehavior;
   begin
      AnimationBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnimationBehavior_Access is
   begin
        return AnimationBehavior_Package.instance;
   end getInstance;

   procedure reset (This : in out AnimationBehavior) is
   begin
        null;
   end reset;

begin
   null;
   instance := AnimationBehavior_Package.Create;

end org.allbinary.animation.AnimationBehavior_Package;


