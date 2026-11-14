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
limited with org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package;
package org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References is
   type SequentialAnimationInterfaceCompositeInterface_Access is access all org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package.SequentialAnimationInterfaceCompositeInterface'Class;
   type SequentialAnimationInterfaceCompositeInterface_Access_Array is array (Natural range <>) of SequentialAnimationInterfaceCompositeInterface_Access;
   type SequentialAnimationInterfaceCompositeInterface_Access_Array_Access is access all SequentialAnimationInterfaceCompositeInterface_Access_Array;
   type SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of SequentialAnimationInterfaceCompositeInterface_Access_Array_Access;
   type SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   type SequentialAnimationInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SequentialAnimationInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SequentialAnimationInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SequentialAnimationInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in SequentialAnimationInterfaceCompositeInterface_Access_Array_Object'Class then SequentialAnimationInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References;

with org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package;

package org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type SequentialAnimationInterfaceCompositeInterface is interface and IndexedAnimationInterfaceCompositeInterface;
   subtype SequentialAnimationInterfaceCompositeInterface_Access is org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.SequentialAnimationInterfaceCompositeInterface_Access;
   function "=" (Left, Right : SequentialAnimationInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References."=";
   subtype SequentialAnimationInterfaceCompositeInterface_Access_Array is org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.SequentialAnimationInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : SequentialAnimationInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References."=";
   subtype SequentialAnimationInterfaceCompositeInterface_Access_Array_Access is org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.SequentialAnimationInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_SequentialAnimationInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return SequentialAnimationInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.Java_Unbox_SequentialAnimationInterfaceCompositeInterface_Access_Array;
   subtype SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References."=";
   subtype SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package_References.Java_Unbox_SequentialAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_SequentialAnimationInterfaceCompositeInterface (Value : SequentialAnimationInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.animation.SequentialAnimationInterfaceCompositeInterface_Package;


