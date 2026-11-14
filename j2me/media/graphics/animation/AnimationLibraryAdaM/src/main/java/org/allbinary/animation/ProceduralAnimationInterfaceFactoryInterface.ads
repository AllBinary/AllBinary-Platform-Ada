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
limited with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
package org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References is
   type ProceduralAnimationInterfaceFactoryInterface_Access is access all org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of ProceduralAnimationInterfaceFactoryInterface_Access;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is access all ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProceduralAnimationInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProceduralAnimationInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in ProceduralAnimationInterfaceFactoryInterface_Access_Array_Object'Class then ProceduralAnimationInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References;

with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package is

   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ProceduralAnimationInterfaceFactoryInterface is interface and BasicAnimationInterfaceFactoryInterface;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ProceduralAnimationInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.Java_Unbox_ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.Java_Unbox_ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ProceduralAnimationInterfaceFactoryInterface (Value : ProceduralAnimationInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstanceAnimation (This : in out ProceduralAnimationInterfaceFactoryInterface; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is abstract;
   procedure getInstanceAnimation (This : in out ProceduralAnimationInterfaceFactoryInterface; animationInterface_Param : access Animation_Package.Animation'Class) is abstract;

end org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;


