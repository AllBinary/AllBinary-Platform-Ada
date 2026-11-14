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
limited with org.allbinary.logic.io.path.AbPath_Package;
package org.allbinary.logic.io.path.AbPath_Package_References is
   type AbPath_Access is access all org.allbinary.logic.io.path.AbPath_Package.AbPath'Class;
   type AbPath_Access_Array is array (Natural range <>) of AbPath_Access;
   type AbPath_Access_Array_Access is access all AbPath_Access_Array;
   type AbPath_Access_Array_Access_Array is array (Natural range <>) of AbPath_Access_Array_Access;
   type AbPath_Access_Array_Access_Array_Access is access all AbPath_Access_Array_Access_Array;
   type AbPath_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbPath_Access_Array_Access;
   end record;
   function Java_Box (Value : AbPath_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbPath_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbPath_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbPath_Access_Array_Access is (if Value /= null and then Value.all in AbPath_Access_Array_Object'Class then AbPath_Access_Array_Object'Class (Value.all).Value else null);
   type AbPath_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbPath_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbPath_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbPath_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbPath_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbPath_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbPath_Access_Array_Access_Array_Object'Class then AbPath_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.path.AbPath_Package_References;

with org.allbinary.logic.io.path.AbPath_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbPathData_Package_References;
limited with org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.io.path.PathUtil_Package_References;

package org.allbinary.logic.io.path.AbPath_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Reference_Types is
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype AbPathData_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access;
   use type AbPathData_Access;
   subtype AbPathData_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array;
   use type AbPathData_Access_Array;
   subtype AbPathData_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access;
   use type AbPathData_Access_Array_Access;
   subtype AbPathData_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array;
   use type AbPathData_Access_Array_Access_Array;
   subtype AbPathData_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array_Access;
   use type AbPathData_Access_Array_Access_Array_Access;
   subtype PathUtil_Access is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access;
   use type PathUtil_Access;
   subtype PathUtil_Access_Array is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array;
   use type PathUtil_Access_Array;
   subtype PathUtil_Access_Array_Access is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array_Access;
   use type PathUtil_Access_Array_Access;
   subtype PathUtil_Access_Array_Access_Array is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array_Access_Array;
   use type PathUtil_Access_Array_Access_Array;
   subtype PathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array_Access_Array_Access;
   use type PathUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   function Java_Box (Value : AbPath_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.path.AbPath_Package_References.Java_Box;
   function Java_Unbox_AbPath_Access_Array (Value : access Java_Object'Class) return AbPath_Access_Array_Access renames org.allbinary.logic.io.path.AbPath_Package_References.Java_Unbox_AbPath_Access_Array;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   function Java_Box (Value : AbPath_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.path.AbPath_Package_References.Java_Box;
   function Java_Unbox_AbPath_Access_Array_Access_Array (Value : access Java_Object'Class) return AbPath_Access_Array_Access_Array_Access renames org.allbinary.logic.io.path.AbPath_Package_References.Java_Unbox_AbPath_Access_Array_Access_Array;

   type AbPath is new Java_Object with record
      commonSeps : CommonSeps_Access;
      abPathData : AbPathData_Access;
      abPathUtil : PathUtil_Access;
      EMPTY_STRING : Unbounded_String;
      schema : Unbounded_String;
      path : Unbounded_String;
      nameP : Unbounded_String;
      hasSchemaP : Boolean;
      numberOfSeps : Integer;
   end record;
   NETWORK_SEP : Unbounded_String;

   procedure Initialize (This : in out AbPath'Class; aPath : Unbounded_String; name : Unbounded_String);
   function Create (aPath : Unbounded_String; name : Unbounded_String) return AbPath_Access;
   function createAbPath return AbPath_Access;
   procedure init (This : in out AbPath);
   function getSchema (This : in out AbPath; aPath : Unbounded_String) return Unbounded_String;
   procedure getSchema (This : in out AbPath; aPath : Unbounded_String);
   function hasSchema (This : in out AbPath) return Boolean;
   function getPathFromPath (This : in out AbPath; aPath : Unbounded_String) return Unbounded_String;
   procedure getPathFromPath (This : in out AbPath; aPath : Unbounded_String);
   procedure setName (This : in out AbPath; name : Unbounded_String);
   function getName (This : in out AbPath) return Unbounded_String;
   function toString (This : in out AbPath) return Unbounded_String;
   function toFileSystemString (This : in out AbPath) return Unbounded_String;
   function getPath (This : in out AbPath) return Unbounded_String;
   procedure setPath (This : in out AbPath; path : Unbounded_String);

end org.allbinary.logic.io.path.AbPath_Package;


