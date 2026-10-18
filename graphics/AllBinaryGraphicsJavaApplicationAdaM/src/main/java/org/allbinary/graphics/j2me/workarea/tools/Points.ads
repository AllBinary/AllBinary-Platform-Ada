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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package;

package org.allbinary.graphics.j2me.workarea.tools.Points_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type Points is tagged;
   type Points_Access is access all Points'Class;
   type Points_Access_Array is array (Natural range <>) of Points_Access;
   type Points_Access_Array_Access is access all Points_Access_Array;
   type Points_Access_Array_Access_Array is array (Natural range <>) of Points_Access_Array_Access;
   type Points_Access_Array_Access_Array_Access is access all Points_Access_Array_Access_Array;

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


