--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


package body org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package is

   procedure Initialize_Fields (This : in out ShakeAnimationListenerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ShakeAnimationListenerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShakeAnimationListenerFactory_Access is
      This : constant ShakeAnimationListenerFactory_Access := new ShakeAnimationListenerFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShakeAnimationListener_Access is
   begin
        return NoShakeAnimationListener_Package.Create;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ShakeAnimationListener_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;


