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

limited with org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;
package org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References is
   type PointsUtil_Access is access all org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package.PointsUtil'Class;
   type PointsUtil_Access_Array is array (Natural range <>) of PointsUtil_Access;
   type PointsUtil_Access_Array_Access is access all PointsUtil_Access_Array;
   type PointsUtil_Access_Array_Access_Array is array (Natural range <>) of PointsUtil_Access_Array_Access;
   type PointsUtil_Access_Array_Access_Array_Access is access all PointsUtil_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PointsUtil_Access is org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References.PointsUtil_Access;
   function "=" (Left, Right : PointsUtil_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array is org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References.PointsUtil_Access_Array;
   function "=" (Left, Right : PointsUtil_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References.PointsUtil_Access_Array_Access;
   function "=" (Left, Right : PointsUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References.PointsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PointsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References.PointsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package_References."=";

   type PointsUtil is new Java_Object with null record;
   instance : PointsUtil_Access;

   procedure Initialize (This : in out PointsUtil'Class);
   function Create return PointsUtil_Access;
   function getInstance return PointsUtil_Access;
   function doTransforms (This : in out PointsUtil; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; angle : Long_Float; fulcrumPoint_Param : access GPoint_Package.GPoint'Class) return BasicArrayList_Access;
   procedure doTransforms (This : in out PointsUtil; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; angle : Long_Float; fulcrumPoint_Param : access GPoint_Package.GPoint'Class);

end org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;


