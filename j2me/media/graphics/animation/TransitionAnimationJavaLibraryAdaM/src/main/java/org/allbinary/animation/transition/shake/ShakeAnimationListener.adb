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


package body org.allbinary.animation.transition.shake.ShakeAnimationListener_Package is

   procedure Initialize_Fields (This : in out ShakeAnimationListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ShakeAnimationListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShakeAnimationListener_Access is
      This : constant ShakeAnimationListener_Access := new ShakeAnimationListener;
   begin
      ShakeAnimationListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onSmallShakeEvent (This : in out ShakeAnimationListener) is
   begin
        null;
   end onSmallShakeEvent;

   procedure onMediumShakeEvent (This : in out ShakeAnimationListener) is
   begin
        null;
   end onMediumShakeEvent;

   procedure onLargeShakeEvent (This : in out ShakeAnimationListener) is
   begin
        null;
   end onLargeShakeEvent;

   procedure onShakeEvent (This : in out ShakeAnimationListener; shakeEvent_Param : access ShakeEvent_Package.ShakeEvent'Class) is
      shakeEvent : constant ShakeEvent_Access := ShakeEvent_Access (shakeEvent_Param);
   begin
        null;
   end onShakeEvent;

   function getType (This : in out ShakeAnimationListener) return Integer is
   begin
        return 0;
   end getType;

end org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;


