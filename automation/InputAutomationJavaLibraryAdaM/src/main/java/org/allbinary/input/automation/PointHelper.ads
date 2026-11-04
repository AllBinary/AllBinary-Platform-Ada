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

limited with org.allbinary.input.automation.PointHelper_Package;
package org.allbinary.input.automation.PointHelper_Package_References is
   type PointHelper_Access is access all org.allbinary.input.automation.PointHelper_Package.PointHelper'Class;
   type PointHelper_Access_Array is array (Natural range <>) of PointHelper_Access;
   type PointHelper_Access_Array_Access is access all PointHelper_Access_Array;
   type PointHelper_Access_Array_Access_Array is array (Natural range <>) of PointHelper_Access_Array_Access;
   type PointHelper_Access_Array_Access_Array_Access is access all PointHelper_Access_Array_Access_Array;
end org.allbinary.input.automation.PointHelper_Package_References;

with org.allbinary.input.automation.PointHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.Point_Package;
with org.allbinary.input.automation.Point_Package_References;
limited with org.allbinary.input.automation.Rectangle_Package;
with org.allbinary.input.automation.Rectangle_Package_References;

package org.allbinary.input.automation.PointHelper_Package is

   package Reference_Types is
   subtype Point_Access is org.allbinary.input.automation.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PointHelper_Access is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access;
   function "=" (Left, Right : PointHelper_Access) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array;
   function "=" (Left, Right : PointHelper_Access_Array) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array_Access is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array_Access;
   function "=" (Left, Right : PointHelper_Access_Array_Access) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array_Access_Array is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array_Access_Array;
   function "=" (Left, Right : PointHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";

   type PointHelper is new Java_Object with null record;
   two : Long_Float;

   procedure Initialize (This : in out PointHelper'Class);
   function Create return PointHelper_Access;
   function getCenterPoint (rectangle_Param : access Rectangle_Package.Rectangle'Class) return Point_Access;
   procedure getCenterPoint (rectangle_Param : access Rectangle_Package.Rectangle'Class);

end org.allbinary.input.automation.PointHelper_Package;


