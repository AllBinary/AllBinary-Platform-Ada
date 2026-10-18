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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.J2SEUtil_Package; use org.allbinary.J2SEUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.logic.string_Id.regex.replace.Replace_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package J2SEUtil_Package renames Standard.org.allbinary.J2SEUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type Replace is tagged;
   type Replace_Access is access all Replace'Class;
   type Replace_Access_Array is array (Natural range <>) of Replace_Access;
   type Replace_Access_Array_Access is access all Replace_Access_Array;
   type Replace_Access_Array_Access_Array is array (Natural range <>) of Replace_Access_Array_Access;
   type Replace_Access_Array_Access_Array_Access is access all Replace_Access_Array_Access_Array;

   type Replace is new Java_Object with record
      logUtil : LogUtil_Access;
      j2seUtil : J2SEUtil_Access;
      REPLACERS_U : Unbounded_String;
      ALL_Field_Id : Unbounded_String;
      FOUND_KEY : Unbounded_String;
      hashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out Replace'Class; key : Unbounded_String; value : Unbounded_String);
   function Create (key : Unbounded_String; value : Unbounded_String) return Replace_Access;
   procedure Initialize (This : in out Replace'Class; keys : Unbounded_String_Array_Access; values : Unbounded_String_Array_Access);
   function Create (keys : Unbounded_String_Array_Access; values : Unbounded_String_Array_Access) return Replace_Access;
   procedure Initialize (This : in out Replace'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return Replace_Access;
   function all_Id (This : in out Replace; replace : Unbounded_String) return Unbounded_String;
   procedure all_Id (This : in out Replace; replace : Unbounded_String);
   function upTo (This : in out Replace; replace_Param : Unbounded_String; total : Integer) return Unbounded_String;
   procedure upTo (This : in out Replace; replace_Param : Unbounded_String; total : Integer);
   function line (This : in out Replace; replace_Param : Unbounded_String) return Unbounded_String;
   procedure line (This : in out Replace; replace_Param : Unbounded_String);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.string_Id.regex.replace.Replace_Package;


