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
with org.allbinary.media.image.ImageUnifierCell_Package; use org.allbinary.media.image.ImageUnifierCell_Package;

package org.allbinary.media.image.ImageUnifierProperties_Package is


   type ImageUnifierProperties is tagged;
   type ImageUnifierProperties_Access is access all ImageUnifierProperties'Class;
   type ImageUnifierProperties_Access_Array is array (Natural range <>) of ImageUnifierProperties_Access;
   type ImageUnifierProperties_Access_Array_Access is access all ImageUnifierProperties_Access_Array;

   type ImageUnifierProperties is new Java_Object with record
      rows : Integer;
      columns : Integer;
      imageUnifierCell : ImageUnifierCell_Access;
   end record;

   procedure Initialize (This : in out ImageUnifierProperties'Class);
   function Create return ImageUnifierProperties_Access;
   function getWidth (This : in out ImageUnifierProperties) return Integer;
   function getHeight (This : in out ImageUnifierProperties) return Integer;
   function getRows (This : in out ImageUnifierProperties) return Integer;
   procedure setRows (This : in out ImageUnifierProperties; rows : Integer);
   function getColumns (This : in out ImageUnifierProperties) return Integer;
   procedure setColumns (This : in out ImageUnifierProperties; columns : Integer);
   function getImageUnifierCell (This : in out ImageUnifierProperties) return ImageUnifierCell_Access;
   procedure setImageUnifierCell (This : in out ImageUnifierProperties; imageUnifierCell : ImageUnifierCell_Access);

end org.allbinary.media.image.ImageUnifierProperties_Package;


