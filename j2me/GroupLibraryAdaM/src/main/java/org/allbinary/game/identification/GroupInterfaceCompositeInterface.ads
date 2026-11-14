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
limited with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
package org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References is
   type GroupInterfaceCompositeInterface_Access is access all org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package.GroupInterfaceCompositeInterface'Class;
   type GroupInterfaceCompositeInterface_Access_Array is array (Natural range <>) of GroupInterfaceCompositeInterface_Access;
   type GroupInterfaceCompositeInterface_Access_Array_Access is access all GroupInterfaceCompositeInterface_Access_Array;
   type GroupInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of GroupInterfaceCompositeInterface_Access_Array_Access;
   type GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   type GroupInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GroupInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GroupInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GroupInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GroupInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GroupInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in GroupInterfaceCompositeInterface_Access_Array_Object'Class then GroupInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GroupInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GroupInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GroupInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GroupInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then GroupInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References;

with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;

package org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GroupInterfaceCompositeInterface is interface;
   subtype GroupInterfaceCompositeInterface_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : GroupInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_GroupInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return GroupInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.Java_Unbox_GroupInterfaceCompositeInterface_Access_Array;
   subtype GroupInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_GroupInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.Java_Unbox_GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GroupInterfaceCompositeInterface (Value : GroupInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getGroupInterface (This : in out GroupInterfaceCompositeInterface) return Group_Access_Array_Access is abstract;

end org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;


