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

package org.allbinary.audio.AudioContentTypeData_Package is


   type AudioContentTypeData is tagged;
   type AudioContentTypeData_Access is access all AudioContentTypeData'Class;
   type AudioContentTypeData_Access_Array is array (Natural range <>) of AudioContentTypeData_Access;
   type AudioContentTypeData_Access_Array_Access is access all AudioContentTypeData_Access_Array;

   type AudioContentTypeData is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out AudioContentTypeData'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return AudioContentTypeData_Access;
   function getName (This : in out AudioContentTypeData) return Unbounded_String;

end org.allbinary.audio.AudioContentTypeData_Package;


