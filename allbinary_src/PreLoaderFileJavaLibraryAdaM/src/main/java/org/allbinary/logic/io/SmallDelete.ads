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
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.io.SmallDelete_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type SmallDelete is tagged;
   type SmallDelete_Access is access all SmallDelete'Class;
   type SmallDelete_Access_Array is array (Natural range <>) of SmallDelete_Access;
   type SmallDelete_Access_Array_Access is access all SmallDelete_Access_Array;
   type SmallDelete_Access_Array_Access_Array is array (Natural range <>) of SmallDelete_Access_Array_Access;
   type SmallDelete_Access_Array_Access_Array_Access is access all SmallDelete_Access_Array_Access_Array;

   type SmallDelete is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      fileName : Unbounded_String;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out SmallDelete'Class; fileName : Unbounded_String);
   function Create (fileName : Unbounded_String) return SmallDelete_Access;
   function deleteAtStart (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String) return Boolean;
   procedure deleteAtStart (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String);
   function deleteBetween (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String; newText : Unbounded_String) return Boolean;
   procedure deleteBetween (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String; newText : Unbounded_String);

end org.allbinary.logic.io.SmallDelete_Package;


