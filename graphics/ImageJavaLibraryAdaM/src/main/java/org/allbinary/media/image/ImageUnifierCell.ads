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

package org.allbinary.media.image.ImageUnifierCell_Package is


   type ImageUnifierCell is tagged;
   type ImageUnifierCell_Access is access all ImageUnifierCell'Class;
   type ImageUnifierCell_Access_Array is array (Natural range <>) of ImageUnifierCell_Access;
   type ImageUnifierCell_Access_Array_Access is access all ImageUnifierCell_Access_Array;

   type ImageUnifierCell is new Java_Object with record
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out ImageUnifierCell'Class; width : Integer; height : Integer);
   function Create (width : Integer; height : Integer) return ImageUnifierCell_Access;
   function getWidth (This : in out ImageUnifierCell) return Integer;
   procedure setWidth (This : in out ImageUnifierCell; width : Integer);
   function getHeight (This : in out ImageUnifierCell) return Integer;
   procedure setHeight (This : in out ImageUnifierCell; height : Integer);

end org.allbinary.media.image.ImageUnifierCell_Package;


