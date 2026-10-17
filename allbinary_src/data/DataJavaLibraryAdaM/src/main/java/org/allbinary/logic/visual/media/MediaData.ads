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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.logic.visual.media.MediaData_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;

   type MediaData is tagged;
   type MediaData_Access is access all MediaData'Class;
   type MediaData_Access_Array is array (Natural range <>) of MediaData_Access;
   type MediaData_Access_Array_Access is access all MediaData_Access_Array;

   type MediaData is new Java_Object with record
      name : Unbounded_String;
      type_Id : Unbounded_String;
      extension : Unbounded_String;
   end record;
   hashMap : HashMap_Access;

   procedure Initialize (This : in out MediaData'Class; a_Name : Unbounded_String);
   function Create (a_Name : Unbounded_String) return MediaData_Access;
   function getName (This : in out MediaData) return Unbounded_String;
   procedure getName (This : in out MediaData);
   function getType (This : in out MediaData) return Unbounded_String;
   procedure getType (This : in out MediaData);
   function getExtension (This : in out MediaData) return Unbounded_String;
   procedure getExtension (This : in out MediaData);
   function isConvertableTo (This : in out MediaData; mediaData : MediaData_Access) return Boolean;
   procedure isConvertableTo (This : in out MediaData; mediaData : MediaData_Access);
   function toString (This : in out MediaData) return Unbounded_String;
   procedure toString (This : in out MediaData);
   function get (a_Name : Unbounded_String) return MediaData_Access;
   procedure get (a_Name : Unbounded_String);
   function getDefault return MediaData_Access;
   procedure getDefault;
   function toHashMap return HashMap_Access;
   procedure toHashMap;

end org.allbinary.logic.visual.media.MediaData_Package;


