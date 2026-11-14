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

with AllBinary_Java;
limited with org.allbinary.animation.transition.AnimationListenerInterface_Package;
package org.allbinary.animation.transition.AnimationListenerInterface_Package_References is
   type AnimationListenerInterface_Access is access all org.allbinary.animation.transition.AnimationListenerInterface_Package.AnimationListenerInterface'Class;
   type AnimationListenerInterface_Access_Array is array (Natural range <>) of AnimationListenerInterface_Access;
   type AnimationListenerInterface_Access_Array_Access is access all AnimationListenerInterface_Access_Array;
   type AnimationListenerInterface_Access_Array_Access_Array is array (Natural range <>) of AnimationListenerInterface_Access_Array_Access;
   type AnimationListenerInterface_Access_Array_Access_Array_Access is access all AnimationListenerInterface_Access_Array_Access_Array;
   type AnimationListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in AnimationListenerInterface_Access_Array_Object'Class then AnimationListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationListenerInterface_Access_Array_Access_Array_Object'Class then AnimationListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.transition.AnimationListenerInterface_Package_References;

with org.allbinary.animation.transition.AnimationListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.transition.AnimationListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type AnimationListenerInterface is interface;
   subtype AnimationListenerInterface_Access is org.allbinary.animation.transition.AnimationListenerInterface_Package_References.AnimationListenerInterface_Access;
   function "=" (Left, Right : AnimationListenerInterface_Access) return Boolean renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References."=";
   subtype AnimationListenerInterface_Access_Array is org.allbinary.animation.transition.AnimationListenerInterface_Package_References.AnimationListenerInterface_Access_Array;
   function "=" (Left, Right : AnimationListenerInterface_Access_Array) return Boolean renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References."=";
   subtype AnimationListenerInterface_Access_Array_Access is org.allbinary.animation.transition.AnimationListenerInterface_Package_References.AnimationListenerInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References."=";
   function Java_Box (Value : AnimationListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References.Java_Box;
   function Java_Unbox_AnimationListenerInterface_Access_Array (Value : access Java_Object'Class) return AnimationListenerInterface_Access_Array_Access renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References.Java_Unbox_AnimationListenerInterface_Access_Array;
   subtype AnimationListenerInterface_Access_Array_Access_Array is org.allbinary.animation.transition.AnimationListenerInterface_Package_References.AnimationListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References."=";
   subtype AnimationListenerInterface_Access_Array_Access_Array_Access is org.allbinary.animation.transition.AnimationListenerInterface_Package_References.AnimationListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References."=";
   function Java_Box (Value : AnimationListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References.Java_Box;
   function Java_Unbox_AnimationListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.transition.AnimationListenerInterface_Package_References.Java_Unbox_AnimationListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AnimationListenerInterface (Value : AnimationListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onPlatformAnimationStart (This : in out AnimationListenerInterface) is abstract;
   procedure onPlatformAnimationEnd (This : in out AnimationListenerInterface) is abstract;
   procedure onPlatformAnimationRepeat (This : in out AnimationListenerInterface) is abstract;

end org.allbinary.animation.transition.AnimationListenerInterface_Package;


