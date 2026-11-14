-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
limited with org.allbinary.logic.io.file.directory.TrackedStrings_Package;
package org.allbinary.logic.io.file.directory.TrackedStrings_Package_References is
   type TrackedStrings_Access is access all org.allbinary.logic.io.file.directory.TrackedStrings_Package.TrackedStrings'Class;
   type TrackedStrings_Access_Array is array (Natural range <>) of TrackedStrings_Access;
   type TrackedStrings_Access_Array_Access is access all TrackedStrings_Access_Array;
   type TrackedStrings_Access_Array_Access_Array is array (Natural range <>) of TrackedStrings_Access_Array_Access;
   type TrackedStrings_Access_Array_Access_Array_Access is access all TrackedStrings_Access_Array_Access_Array;
   type TrackedStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackedStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackedStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackedStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackedStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackedStrings_Access_Array_Access is (if Value /= null and then Value.all in TrackedStrings_Access_Array_Object'Class then TrackedStrings_Access_Array_Object'Class (Value.all).Value else null);
   type TrackedStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackedStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackedStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackedStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackedStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackedStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrackedStrings_Access_Array_Access_Array_Object'Class then TrackedStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.directory.TrackedStrings_Package_References;

with org.allbinary.logic.io.file.directory.TrackedStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.io.file.directory.TrackedStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TrackedStrings_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access;
   function "=" (Left, Right : TrackedStrings_Access) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array;
   function "=" (Left, Right : TrackedStrings_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access;
   function "=" (Left, Right : TrackedStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   function Java_Box (Value : TrackedStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.Java_Box;
   function Java_Unbox_TrackedStrings_Access_Array (Value : access Java_Object'Class) return TrackedStrings_Access_Array_Access renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.Java_Unbox_TrackedStrings_Access_Array;
   subtype TrackedStrings_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access_Array;
   function "=" (Left, Right : TrackedStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackedStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   function Java_Box (Value : TrackedStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.Java_Box;
   function Java_Unbox_TrackedStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return TrackedStrings_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.Java_Unbox_TrackedStrings_Access_Array_Access_Array;

   type TrackedStrings is new Java_Object with record
      TARGET_PATH_WINDOWS : Unbounded_String;
      TARGET_PATH_UNIX : Unbounded_String;
      HTML_TEMP : Unbounded_String;
      APPLICATION : Unbounded_String;
      APP : Unbounded_String;
      GIT_COMMAND : Unbounded_String;
      CHANGE_DIRECTORY_OPTION : Unbounded_String;
      LIST_FILES_COMMAND : Unbounded_String;
      ERROR_UNMATCH_OPTION : Unbounded_String;
      PATHSPEC_SEPARATOR : Unbounded_String;
      SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE : Unbounded_String;
   end record;
   instance : TrackedStrings_Access;

   procedure Initialize (This : in out TrackedStrings'Class);
   function Create return TrackedStrings_Access;
   function getInstance return TrackedStrings_Access;

end org.allbinary.logic.io.file.directory.TrackedStrings_Package;


