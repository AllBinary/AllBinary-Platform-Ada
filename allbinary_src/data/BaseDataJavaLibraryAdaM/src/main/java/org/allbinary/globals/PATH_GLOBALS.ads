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
limited with org.allbinary.globals.PATH_GLOBALS_Package;
package org.allbinary.globals.PATH_GLOBALS_Package_References is
   type PATH_GLOBALS_Access is access all org.allbinary.globals.PATH_GLOBALS_Package.PATH_GLOBALS'Class;
   type PATH_GLOBALS_Access_Array is array (Natural range <>) of PATH_GLOBALS_Access;
   type PATH_GLOBALS_Access_Array_Access is access all PATH_GLOBALS_Access_Array;
   type PATH_GLOBALS_Access_Array_Access_Array is array (Natural range <>) of PATH_GLOBALS_Access_Array_Access;
   type PATH_GLOBALS_Access_Array_Access_Array_Access is access all PATH_GLOBALS_Access_Array_Access_Array;
   type PATH_GLOBALS_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PATH_GLOBALS_Access_Array_Access;
   end record;
   function Java_Box (Value : PATH_GLOBALS_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PATH_GLOBALS_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PATH_GLOBALS_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PATH_GLOBALS_Access_Array_Access is (if Value /= null and then Value.all in PATH_GLOBALS_Access_Array_Object'Class then PATH_GLOBALS_Access_Array_Object'Class (Value.all).Value else null);
   type PATH_GLOBALS_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PATH_GLOBALS_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PATH_GLOBALS_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PATH_GLOBALS_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PATH_GLOBALS_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PATH_GLOBALS_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PATH_GLOBALS_Access_Array_Access_Array_Object'Class then PATH_GLOBALS_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.globals.PATH_GLOBALS_Package_References;

with org.allbinary.globals.PATH_GLOBALS_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.globals.PATH_GLOBALS_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PATH_GLOBALS_Access is org.allbinary.globals.PATH_GLOBALS_Package_References.PATH_GLOBALS_Access;
   function "=" (Left, Right : PATH_GLOBALS_Access) return Boolean renames org.allbinary.globals.PATH_GLOBALS_Package_References."=";
   subtype PATH_GLOBALS_Access_Array is org.allbinary.globals.PATH_GLOBALS_Package_References.PATH_GLOBALS_Access_Array;
   function "=" (Left, Right : PATH_GLOBALS_Access_Array) return Boolean renames org.allbinary.globals.PATH_GLOBALS_Package_References."=";
   subtype PATH_GLOBALS_Access_Array_Access is org.allbinary.globals.PATH_GLOBALS_Package_References.PATH_GLOBALS_Access_Array_Access;
   function "=" (Left, Right : PATH_GLOBALS_Access_Array_Access) return Boolean renames org.allbinary.globals.PATH_GLOBALS_Package_References."=";
   function Java_Box (Value : PATH_GLOBALS_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.PATH_GLOBALS_Package_References.Java_Box;
   function Java_Unbox_PATH_GLOBALS_Access_Array (Value : access Java_Object'Class) return PATH_GLOBALS_Access_Array_Access renames org.allbinary.globals.PATH_GLOBALS_Package_References.Java_Unbox_PATH_GLOBALS_Access_Array;
   subtype PATH_GLOBALS_Access_Array_Access_Array is org.allbinary.globals.PATH_GLOBALS_Package_References.PATH_GLOBALS_Access_Array_Access_Array;
   function "=" (Left, Right : PATH_GLOBALS_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.PATH_GLOBALS_Package_References."=";
   subtype PATH_GLOBALS_Access_Array_Access_Array_Access is org.allbinary.globals.PATH_GLOBALS_Package_References.PATH_GLOBALS_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PATH_GLOBALS_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.PATH_GLOBALS_Package_References."=";
   function Java_Box (Value : PATH_GLOBALS_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.PATH_GLOBALS_Package_References.Java_Box;
   function Java_Unbox_PATH_GLOBALS_Access_Array_Access_Array (Value : access Java_Object'Class) return PATH_GLOBALS_Access_Array_Access_Array_Access renames org.allbinary.globals.PATH_GLOBALS_Package_References.Java_Unbox_PATH_GLOBALS_Access_Array_Access_Array;

   type PATH_GLOBALS is new Java_Object with record
      DATA_PATH : Unbounded_String;
      INIT_PATH : Unbounded_String;
      VIEWS_PATH : Unbounded_String;
      LOG_PATH : Unbounded_String;
      BACKUP_PATH : Unbounded_String;
   end record;
   instance : PATH_GLOBALS_Access;

   procedure Initialize (This : in out PATH_GLOBALS'Class);
   function Create return PATH_GLOBALS_Access;
   function getInstance return PATH_GLOBALS_Access;

end org.allbinary.globals.PATH_GLOBALS_Package;


