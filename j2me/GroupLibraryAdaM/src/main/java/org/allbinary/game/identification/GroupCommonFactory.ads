-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.game.identification.GroupCommonFactory_Package;
package org.allbinary.game.identification.GroupCommonFactory_Package_References is
   type GroupCommonFactory_Access is access all org.allbinary.game.identification.GroupCommonFactory_Package.GroupCommonFactory'Class;
   type GroupCommonFactory_Access_Array is array (Natural range <>) of GroupCommonFactory_Access;
   type GroupCommonFactory_Access_Array_Access is access all GroupCommonFactory_Access_Array;
   type GroupCommonFactory_Access_Array_Access_Array is array (Natural range <>) of GroupCommonFactory_Access_Array_Access;
   type GroupCommonFactory_Access_Array_Access_Array_Access is access all GroupCommonFactory_Access_Array_Access_Array;
   type GroupCommonFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GroupCommonFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GroupCommonFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GroupCommonFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GroupCommonFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GroupCommonFactory_Access_Array_Access is (if Value /= null and then Value.all in GroupCommonFactory_Access_Array_Object'Class then GroupCommonFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GroupCommonFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GroupCommonFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GroupCommonFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GroupCommonFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GroupCommonFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GroupCommonFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GroupCommonFactory_Access_Array_Access_Array_Object'Class then GroupCommonFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.identification.GroupCommonFactory_Package_References;

with org.allbinary.game.identification.GroupCommonFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.identification.GroupCommonFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GroupCommonFactory_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access;
   function "=" (Left, Right : GroupCommonFactory_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array;
   function "=" (Left, Right : GroupCommonFactory_Access_Array) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   function Java_Box (Value : GroupCommonFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.identification.GroupCommonFactory_Package_References.Java_Box;
   function Java_Unbox_GroupCommonFactory_Access_Array (Value : access Java_Object'Class) return GroupCommonFactory_Access_Array_Access renames org.allbinary.game.identification.GroupCommonFactory_Package_References.Java_Unbox_GroupCommonFactory_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   function Java_Box (Value : GroupCommonFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.identification.GroupCommonFactory_Package_References.Java_Box;
   function Java_Unbox_GroupCommonFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GroupCommonFactory_Access_Array_Access_Array_Access renames org.allbinary.game.identification.GroupCommonFactory_Package_References.Java_Unbox_GroupCommonFactory_Access_Array_Access_Array;

   type GroupCommonFactory is new Java_Object with record
      ID : Integer;
      GROUP_NAME_LABEL : Unbounded_String;
      ID_LABEL : Unbounded_String;
      ADDING_LABEL : Unbounded_String;
      TO_LABEL : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GroupCommonFactory'Class);
   function Create return GroupCommonFactory_Access;
   function getInstance return GroupCommonFactory_Access;

end org.allbinary.game.identification.GroupCommonFactory_Package;


