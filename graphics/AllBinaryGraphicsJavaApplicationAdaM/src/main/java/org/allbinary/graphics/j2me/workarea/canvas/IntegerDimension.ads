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

package org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package is


   type IntegerDimension is tagged;
   type IntegerDimension_Access is access all IntegerDimension'Class;
   type IntegerDimension_Access_Array is array (Natural range <>) of IntegerDimension_Access;
   type IntegerDimension_Access_Array_Access is access all IntegerDimension_Access_Array;

   type IntegerDimension is new Java_Object with record
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out IntegerDimension'Class; width : Integer; height : Integer);
   function Create (width : Integer; height : Integer) return IntegerDimension_Access;
   function getWidth (This : in out IntegerDimension) return Integer;
   procedure getWidth (This : in out IntegerDimension);
   procedure setWidth (This : in out IntegerDimension; width : Integer);
   function getHeight (This : in out IntegerDimension) return Integer;
   procedure getHeight (This : in out IntegerDimension);
   procedure setHeight (This : in out IntegerDimension; height : Integer);

end org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;


