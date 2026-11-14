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
limited with org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package;
package org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References is
   type IndexedAnimationInterfaceCompositeInterface_Access is access all org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package.IndexedAnimationInterfaceCompositeInterface'Class;
   type IndexedAnimationInterfaceCompositeInterface_Access_Array is array (Natural range <>) of IndexedAnimationInterfaceCompositeInterface_Access;
   type IndexedAnimationInterfaceCompositeInterface_Access_Array_Access is access all IndexedAnimationInterfaceCompositeInterface_Access_Array;
   type IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimationInterfaceCompositeInterface_Access_Array_Access;
   type IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   type IndexedAnimationInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimationInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimationInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimationInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimationInterfaceCompositeInterface_Access_Array_Object'Class then IndexedAnimationInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References;

with org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type IndexedAnimationInterfaceCompositeInterface is interface;
   subtype IndexedAnimationInterfaceCompositeInterface_Access is org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.IndexedAnimationInterfaceCompositeInterface_Access;
   function "=" (Left, Right : IndexedAnimationInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References."=";
   subtype IndexedAnimationInterfaceCompositeInterface_Access_Array is org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.IndexedAnimationInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : IndexedAnimationInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References."=";
   subtype IndexedAnimationInterfaceCompositeInterface_Access_Array_Access is org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.IndexedAnimationInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimationInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return IndexedAnimationInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.Java_Unbox_IndexedAnimationInterfaceCompositeInterface_Access_Array;
   subtype IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References."=";
   subtype IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package_References.Java_Unbox_IndexedAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_IndexedAnimationInterfaceCompositeInterface (Value : IndexedAnimationInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package;


