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

limited with org.allbinary.graphics.j2me.workarea.tools.Points_Package;
package org.allbinary.graphics.j2me.workarea.tools.Points_Package_References is
   type Points_Access is access all org.allbinary.graphics.j2me.workarea.tools.Points_Package.Points'Class;
   type Points_Access_Array is array (Natural range <>) of Points_Access;
   type Points_Access_Array_Access is access all Points_Access_Array;
   type Points_Access_Array_Access_Array is array (Natural range <>) of Points_Access_Array_Access;
   type Points_Access_Array_Access_Array_Access is access all Points_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.Points_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.Points_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package;

package org.allbinary.graphics.j2me.workarea.tools.Points_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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


   subtype Points_Access is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access;
   function "=" (Left, Right : Points_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.Points_Package_References."=";
   subtype Points_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array;
   function "=" (Left, Right : Points_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.Points_Package_References."=";
   subtype Points_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array_Access;
   function "=" (Left, Right : Points_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.Points_Package_References."=";
   subtype Points_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array_Access_Array;
   function "=" (Left, Right : Points_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.Points_Package_References."=";
   subtype Points_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Points_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.Points_Package_References."=";

   type Points is new Java_Object and PointsInterface with record
      pointVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out Points'Class);
   function Create return Points_Access;
   procedure init (This : in out Points);
   function getPoints (This : in out Points) return BasicArrayList_Access;
   procedure addPoints (This : in out Points; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isValid (This : in out Points) return Boolean;
   function getSize (This : in out Points) return Integer;

end org.allbinary.graphics.j2me.workarea.tools.Points_Package;


