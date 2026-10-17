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

package org.allbinary.media.image.cache.BufferedImageInfo_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type BufferedImageInfo is tagged;
   type BufferedImageInfo_Access is access all BufferedImageInfo'Class;
   type BufferedImageInfo_Access_Array is array (Natural range <>) of BufferedImageInfo_Access;
   type BufferedImageInfo_Access_Array_Access is access all BufferedImageInfo_Access_Array;

   type BufferedImageInfo is new Java_Object with record
      width : Integer;
      height : Integer;
      type_Id : Integer;
   end record;

   procedure Initialize (This : in out BufferedImageInfo'Class; width : Integer; height : Integer; type_Id : Integer);
   function Create (width : Integer; height : Integer; type_Id : Integer) return BufferedImageInfo_Access;
   function getWidth (This : in out BufferedImageInfo) return Integer;
   procedure getWidth (This : in out BufferedImageInfo);
   procedure setWidth (This : in out BufferedImageInfo; width : Integer);
   function getHeight (This : in out BufferedImageInfo) return Integer;
   procedure getHeight (This : in out BufferedImageInfo);
   procedure setHeight (This : in out BufferedImageInfo; height : Integer);
   function getType (This : in out BufferedImageInfo) return Integer;
   procedure getType (This : in out BufferedImageInfo);
   procedure setType (This : in out BufferedImageInfo; type_Id : Integer);
   function toString (This : in out BufferedImageInfo) return Unbounded_String;
   procedure toString (This : in out BufferedImageInfo);

end org.allbinary.media.image.cache.BufferedImageInfo_Package;


