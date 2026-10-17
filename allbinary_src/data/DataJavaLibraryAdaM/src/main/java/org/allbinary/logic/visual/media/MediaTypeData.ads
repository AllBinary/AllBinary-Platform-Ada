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

package org.allbinary.logic.visual.media.MediaTypeData_Package is


   type MediaTypeData is tagged;
   type MediaTypeData_Access is access all MediaTypeData'Class;
   type MediaTypeData_Access_Array is array (Natural range <>) of MediaTypeData_Access;
   type MediaTypeData_Access_Array_Access is access all MediaTypeData_Access_Array;

   type MediaTypeData is new Java_Object with record
      RESIZABLE_MEDIA : Unbounded_String;
      NOT_RESIZABLE_MEDIA : Unbounded_String;
   end record;
   instance : MediaTypeData_Access;

   procedure Initialize (This : in out MediaTypeData'Class);
   function Create return MediaTypeData_Access;
   function getInstance return MediaTypeData_Access;

end org.allbinary.logic.visual.media.MediaTypeData_Package;


