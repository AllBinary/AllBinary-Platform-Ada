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
--  with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFileSystem_Package; use org.allbinary.logic.io.file.AbFileSystem_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.io.SmallInsert_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileSystem_Package renames org.allbinary.logic.io.file.AbFileSystem_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type SmallInsert is tagged;
   type SmallInsert_Access is access all SmallInsert'Class;
   type SmallInsert_Access_Array is array (Natural range <>) of SmallInsert_Access;
   type SmallInsert_Access_Array_Access is access all SmallInsert_Access_Array;

   type SmallInsert is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      fileName : Unbounded_String;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out SmallInsert'Class; fileName : Unbounded_String);
   function Create (fileName : Unbounded_String) return SmallInsert_Access;
   function atBeginning (This : in out SmallInsert; text : Unbounded_String) return Boolean;
   procedure atBeginning (This : in out SmallInsert; text : Unbounded_String);
   function after (This : in out SmallInsert; text : Unbounded_String; after : Unbounded_String) return Boolean;
   procedure after (This : in out SmallInsert; text : Unbounded_String; after : Unbounded_String);
   function atEnd (This : in out SmallInsert; text : Unbounded_String) return Boolean;
   procedure atEnd (This : in out SmallInsert; text : Unbounded_String);

end org.allbinary.logic.io.SmallInsert_Package;


