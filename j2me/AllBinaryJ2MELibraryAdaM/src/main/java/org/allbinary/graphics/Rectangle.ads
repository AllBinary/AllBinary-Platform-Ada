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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.graphics.Rectangle_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type Rectangle is tagged;
   type Rectangle_Access is access all Rectangle'Class;
   type Rectangle_Access_Array is array (Natural range <>) of Rectangle_Access;
   type Rectangle_Access_Array_Access is access all Rectangle_Access_Array;

   type Rectangle is new Java_Object with record
      point : GPoint_Access;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out Rectangle'Class; point : GPoint_Access; width : Integer; height : Integer);
   function Create (point : GPoint_Access; width : Integer; height : Integer) return Rectangle_Access;
   function getPoint (This : in out Rectangle) return GPoint_Access;
   procedure getPoint (This : in out Rectangle);
   procedure setPoint (This : in out Rectangle; point : GPoint_Access);
   function getMaxX (This : in out Rectangle) return Integer;
   procedure getMaxX (This : in out Rectangle);
   function getMaxY (This : in out Rectangle) return Integer;
   procedure getMaxY (This : in out Rectangle);
   function getWidth (This : in out Rectangle) return Integer;
   procedure getWidth (This : in out Rectangle);
   procedure setWidth (This : in out Rectangle; width : Integer);
   function getHeight (This : in out Rectangle) return Integer;
   procedure getHeight (This : in out Rectangle);
   procedure setHeight (This : in out Rectangle; height : Integer);
   function toString (This : in out Rectangle) return Unbounded_String;
   procedure toString (This : in out Rectangle);

end org.allbinary.graphics.Rectangle_Package;


