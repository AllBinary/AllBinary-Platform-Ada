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
--  with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.io.LineReader_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type LineReader is tagged;
   type LineReader_Access is access all LineReader'Class;
   type LineReader_Access_Array is array (Natural range <>) of LineReader_Access;
   type LineReader_Access_Array_Access is access all LineReader_Access_Array;

   type LineReader is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      fileName : Unbounded_String;
      string_Id : Unbounded_String;
      index : Integer;
      idFile : AbFileInputStream_Access;
      idData : DataInputStream_Access;
   end record;

   procedure Initialize (This : in out LineReader'Class; fileName : Unbounded_String);
   function Create (fileName : Unbounded_String) return LineReader_Access;
   function hasNext (This : in out LineReader) return Boolean;
   procedure hasNext (This : in out LineReader);
   function next (This : in out LineReader) return Unbounded_String;
   procedure next (This : in out LineReader);

end org.allbinary.logic.io.LineReader_Package;


