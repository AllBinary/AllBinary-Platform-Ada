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

limited with org.allbinary.util.CircularIndexUtil_Package;
package org.allbinary.util.CircularIndexUtil_Package_References is
   type CircularIndexUtil_Access is access all org.allbinary.util.CircularIndexUtil_Package.CircularIndexUtil'Class;
   type CircularIndexUtil_Access_Array is array (Natural range <>) of CircularIndexUtil_Access;
   type CircularIndexUtil_Access_Array_Access is access all CircularIndexUtil_Access_Array;
   type CircularIndexUtil_Access_Array_Access_Array is array (Natural range <>) of CircularIndexUtil_Access_Array_Access;
   type CircularIndexUtil_Access_Array_Access_Array_Access is access all CircularIndexUtil_Access_Array_Access_Array;
end org.allbinary.util.CircularIndexUtil_Package_References;

with org.allbinary.util.CircularIndexUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.util.CircularIndexUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";

   type CircularIndexUtil is new Java_Object with record
      index : Integer;
      lastIndex : Integer;
      size : Integer;
   end record;
   NULL_CIRCULAR_INDEX_UTIL : CircularIndexUtil_Access;

   procedure Initialize (This : in out CircularIndexUtil'Class; index : Integer; size : Integer);
   function Create (index : Integer; size : Integer) return CircularIndexUtil_Access;
   function next (This : in out CircularIndexUtil) return Integer;
   function previous (This : in out CircularIndexUtil) return Integer;
   procedure setIndex (This : in out CircularIndexUtil; index : Integer);
   function getIndex (This : in out CircularIndexUtil) return Integer;
   function createInstance (max : Integer) return CircularIndexUtil_Access;
   procedure createInstance (max : Integer);
   function createInstanceAt (index : Integer; max : Integer) return CircularIndexUtil_Access;
   procedure createInstanceAt (index : Integer; max : Integer);
   procedure setSize (This : in out CircularIndexUtil; size : Integer);
   function getSize (This : in out CircularIndexUtil) return Integer;
   function toString (This : in out CircularIndexUtil) return Unbounded_String;

end org.allbinary.util.CircularIndexUtil_Package;


