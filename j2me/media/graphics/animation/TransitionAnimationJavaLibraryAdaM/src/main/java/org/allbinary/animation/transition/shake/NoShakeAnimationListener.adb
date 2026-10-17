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


package body org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package is

   procedure Initialize_Fields (This : in out NoShakeAnimationListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoShakeAnimationListener'Class) is
   begin
      ShakeAnimationListener_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoShakeAnimationListener_Access is
      This : constant NoShakeAnimationListener_Access := new NoShakeAnimationListener;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NO_SHAKE_ANIMATION_LISTENER := NoShakeAnimationListener_Package.Create;

end org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;


