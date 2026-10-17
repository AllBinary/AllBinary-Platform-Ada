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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.util.HashtableUtil_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type HashtableUtil is tagged;
   type HashtableUtil_Access is access all HashtableUtil'Class;
   type HashtableUtil_Access_Array is array (Natural range <>) of HashtableUtil_Access;
   type HashtableUtil_Access_Array_Access is access all HashtableUtil_Access_Array;

   type HashtableUtil is new Java_Object with record
      enumerationUtil : EnumerationUtil_Access;
   end record;
   instance : HashtableUtil_Access;

   procedure Initialize (This : in out HashtableUtil'Class);
   function Create return HashtableUtil_Access;
   function getInstance return HashtableUtil_Access;
   procedure getInstance;
   procedure putAll (This : in out HashtableUtil; fromHashtable : ABHashtable_Access; hashtable : ABHashtable_Access);
   function getKeysAsArray (This : in out HashtableUtil; hashtable : ABHashtable_Access) return Java_Object_Access_Array_Access;
   procedure getKeysAsArray (This : in out HashtableUtil; hashtable : ABHashtable_Access);
   function getKeysAsList (This : in out HashtableUtil; hashtable : ABHashtable_Access) return BasicArrayList_Access;
   procedure getKeysAsList (This : in out HashtableUtil; hashtable : ABHashtable_Access);

end org.allbinary.util.HashtableUtil_Package;


