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
limited with org.allbinary.logic.io.file.AbFileSystem_Package;
package org.allbinary.logic.io.file.AbFileSystem_Package_References is
   type AbFileSystem_Access is access all org.allbinary.logic.io.file.AbFileSystem_Package.AbFileSystem'Class;
   type AbFileSystem_Access_Array is array (Natural range <>) of AbFileSystem_Access;
   type AbFileSystem_Access_Array_Access is access all AbFileSystem_Access_Array;
   type AbFileSystem_Access_Array_Access_Array is array (Natural range <>) of AbFileSystem_Access_Array_Access;
   type AbFileSystem_Access_Array_Access_Array_Access is access all AbFileSystem_Access_Array_Access_Array;
   type AbFileSystem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileSystem_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileSystem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileSystem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileSystem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileSystem_Access_Array_Access is (if Value /= null and then Value.all in AbFileSystem_Access_Array_Object'Class then AbFileSystem_Access_Array_Object'Class (Value.all).Value else null);
   type AbFileSystem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileSystem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileSystem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileSystem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileSystem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileSystem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbFileSystem_Access_Array_Access_Array_Object'Class then AbFileSystem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.AbFileSystem_Package_References;

with org.allbinary.logic.io.file.AbFileSystem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.logic.io.file.AbFileSystem_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbFileSystem_Access is org.allbinary.logic.io.file.AbFileSystem_Package_References.AbFileSystem_Access;
   function "=" (Left, Right : AbFileSystem_Access) return Boolean renames org.allbinary.logic.io.file.AbFileSystem_Package_References."=";
   subtype AbFileSystem_Access_Array is org.allbinary.logic.io.file.AbFileSystem_Package_References.AbFileSystem_Access_Array;
   function "=" (Left, Right : AbFileSystem_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFileSystem_Package_References."=";
   subtype AbFileSystem_Access_Array_Access is org.allbinary.logic.io.file.AbFileSystem_Package_References.AbFileSystem_Access_Array_Access;
   function "=" (Left, Right : AbFileSystem_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFileSystem_Package_References."=";
   function Java_Box (Value : AbFileSystem_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.AbFileSystem_Package_References.Java_Box;
   function Java_Unbox_AbFileSystem_Access_Array (Value : access Java_Object'Class) return AbFileSystem_Access_Array_Access renames org.allbinary.logic.io.file.AbFileSystem_Package_References.Java_Unbox_AbFileSystem_Access_Array;
   subtype AbFileSystem_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFileSystem_Package_References.AbFileSystem_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileSystem_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFileSystem_Package_References."=";
   subtype AbFileSystem_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFileSystem_Package_References.AbFileSystem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileSystem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFileSystem_Package_References."=";
   function Java_Box (Value : AbFileSystem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.AbFileSystem_Package_References.Java_Box;
   function Java_Unbox_AbFileSystem_Access_Array_Access_Array (Value : access Java_Object'Class) return AbFileSystem_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.AbFileSystem_Package_References.Java_Unbox_AbFileSystem_Access_Array_Access_Array;

   type AbFileSystem is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : AbFileSystem_Access;

   procedure Initialize (This : in out AbFileSystem'Class);
   function Create return AbFileSystem_Access;
   function getInstance return AbFileSystem_Access;
   function isDirectoryOrFile (This : in out AbFileSystem; path : Unbounded_String) return Boolean;
   procedure isDirectoryOrFile (This : in out AbFileSystem; path : Unbounded_String);
   function isDirectory (This : in out AbFileSystem; path : Unbounded_String) return Boolean;
   procedure isDirectory (This : in out AbFileSystem; path : Unbounded_String);
   function getFilesAsStringArrayForPath (This : in out AbFileSystem; currentDirPath : Unbounded_String) return Unbounded_String_Array_Access;
   procedure getFilesAsStringArrayForPath (This : in out AbFileSystem; currentDirPath : Unbounded_String);
   function readAsString (This : in out AbFileSystem; fileName : Unbounded_String) return Unbounded_String;
   procedure readAsString (This : in out AbFileSystem; fileName : Unbounded_String);
   function readAsString (This : in out AbFileSystem; fileName : Unbounded_String; bytes : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure readAsString (This : in out AbFileSystem; fileName : Unbounded_String; bytes : Short_Short_Integer_Array_Access);
   function close (This : in out AbFileSystem; closeable_Param : access Java_Object'Class) return Boolean;
   procedure close (This : in out AbFileSystem; closeable_Param : access Java_Object'Class);
   function close (This : in out AbFileSystem; Value : Unbounded_String) return Boolean;
   procedure close (This : in out AbFileSystem; Value : Unbounded_String);

end org.allbinary.logic.io.file.AbFileSystem_Package;


