-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

package org.allbinary.media.ScaleProperties_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;

   type ScaleProperties is tagged;
   type ScaleProperties_Access is access all ScaleProperties'Class;
   type ScaleProperties_Access_Array is array (Natural range <>) of ScaleProperties_Access;
   type ScaleProperties_Access_Array_Access is access all ScaleProperties_Access_Array;

   type ScaleProperties is new Java_Object with record
      scaleX : Float;
      scaleY : Float;
      scaleWidth : Integer;
      scaleHeight : Integer;
      shouldScale : Boolean;
   end record;
   instance : ScaleProperties_Access;

   procedure Initialize (This : in out ScaleProperties'Class);
   function Create return ScaleProperties_Access;
   function toString (This : in out ScaleProperties) return Unbounded_String;
   procedure toString (This : in out ScaleProperties);

end org.allbinary.media.ScaleProperties_Package;


