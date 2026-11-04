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


with org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;

package body org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package is

   subtype ShakeAnimationListener_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
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
      ShakeAnimationListenerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShakeAnimationListener_Access is
   begin
        return ShakeAnimationListener_Access (NoShakeAnimationListener_Package.Create);
   end getInstance;

end org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;


