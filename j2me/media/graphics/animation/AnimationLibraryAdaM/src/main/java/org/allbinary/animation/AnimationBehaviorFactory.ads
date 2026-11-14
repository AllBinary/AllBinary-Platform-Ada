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

with AllBinary_Java;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
package org.allbinary.animation.AnimationBehaviorFactory_Package_References is
   type AnimationBehaviorFactory_Access is access all org.allbinary.animation.AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class;
   type AnimationBehaviorFactory_Access_Array is array (Natural range <>) of AnimationBehaviorFactory_Access;
   type AnimationBehaviorFactory_Access_Array_Access is access all AnimationBehaviorFactory_Access_Array;
   type AnimationBehaviorFactory_Access_Array_Access_Array is array (Natural range <>) of AnimationBehaviorFactory_Access_Array_Access;
   type AnimationBehaviorFactory_Access_Array_Access_Array_Access is access all AnimationBehaviorFactory_Access_Array_Access_Array;
   type AnimationBehaviorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationBehaviorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationBehaviorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationBehaviorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationBehaviorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationBehaviorFactory_Access_Array_Access is (if Value /= null and then Value.all in AnimationBehaviorFactory_Access_Array_Object'Class then AnimationBehaviorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationBehaviorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationBehaviorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationBehaviorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationBehaviorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationBehaviorFactory_Access_Array_Access_Array_Object'Class then AnimationBehaviorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.AnimationBehaviorFactory_Package_References;

with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.AnimationBehaviorFactory_Package is

   package Reference_Types is
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   function Java_Box (Value : AnimationBehaviorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.AnimationBehaviorFactory_Package_References.Java_Box;
   function Java_Unbox_AnimationBehaviorFactory_Access_Array (Value : access Java_Object'Class) return AnimationBehaviorFactory_Access_Array_Access renames org.allbinary.animation.AnimationBehaviorFactory_Package_References.Java_Unbox_AnimationBehaviorFactory_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   function Java_Box (Value : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.AnimationBehaviorFactory_Package_References.Java_Box;
   function Java_Unbox_AnimationBehaviorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationBehaviorFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.AnimationBehaviorFactory_Package_References.Java_Unbox_AnimationBehaviorFactory_Access_Array_Access_Array;

   type AnimationBehaviorFactory is new Java_Object with null record;
   instance : AnimationBehaviorFactory_Access;

   procedure Initialize (This : in out AnimationBehaviorFactory'Class);
   function Create return AnimationBehaviorFactory_Access;
   function getInstance return AnimationBehaviorFactory_Access;
   function getOrCreateInstance (This : in out AnimationBehaviorFactory) return AnimationBehavior_Access;

end org.allbinary.animation.AnimationBehaviorFactory_Package;


