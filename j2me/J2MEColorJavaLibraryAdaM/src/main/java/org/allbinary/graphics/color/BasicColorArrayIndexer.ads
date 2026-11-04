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

limited with org.allbinary.graphics.color.BasicColorArrayIndexer_Package;
package org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References is
   type BasicColorArrayIndexer_Access is access all org.allbinary.graphics.color.BasicColorArrayIndexer_Package.BasicColorArrayIndexer'Class;
   type BasicColorArrayIndexer_Access_Array is array (Natural range <>) of BasicColorArrayIndexer_Access;
   type BasicColorArrayIndexer_Access_Array_Access is access all BasicColorArrayIndexer_Access_Array;
   type BasicColorArrayIndexer_Access_Array_Access_Array is array (Natural range <>) of BasicColorArrayIndexer_Access_Array_Access;
   type BasicColorArrayIndexer_Access_Array_Access_Array_Access is access all BasicColorArrayIndexer_Access_Array_Access_Array;
end org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References;

with org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.BasicColorArrayIndexer_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicColorArrayIndexer_Access is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access;
   function "=" (Left, Right : BasicColorArrayIndexer_Access) return Boolean renames org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References."=";
   subtype BasicColorArrayIndexer_Access_Array is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array;
   function "=" (Left, Right : BasicColorArrayIndexer_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References."=";
   subtype BasicColorArrayIndexer_Access_Array_Access is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array_Access;
   function "=" (Left, Right : BasicColorArrayIndexer_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References."=";
   subtype BasicColorArrayIndexer_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorArrayIndexer_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References."=";
   subtype BasicColorArrayIndexer_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorArrayIndexer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References."=";

   type BasicColorArrayIndexer is new Java_Object with record
      basicColorArray : BasicColor_Access_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
   end record;

   procedure Initialize (This : in out BasicColorArrayIndexer'Class; basicColorArray : BasicColor_Access_Array_Access);
   function Create (basicColorArray : BasicColor_Access_Array_Access) return BasicColorArrayIndexer_Access;
   procedure next (This : in out BasicColorArrayIndexer);
   function get (This : in out BasicColorArrayIndexer) return BasicColor_Access;
   function getBasicColorArray (This : in out BasicColorArrayIndexer) return BasicColor_Access_Array_Access;

end org.allbinary.graphics.color.BasicColorArrayIndexer_Package;


