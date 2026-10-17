-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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

package org.allbinary.logic.util.cache.CacheType_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type CacheType is tagged;
   type CacheType_Access is access all CacheType'Class;
   type CacheType_Access_Array is array (Natural range <>) of CacheType_Access;
   type CacheType_Access_Array_Access is access all CacheType_Access_Array;

   type CacheType is new Java_Object with record
      vendor : Unbounded_String;
      type_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out CacheType'Class; vendor : Unbounded_String; type_Id : Unbounded_String);
   function Create (vendor : Unbounded_String; type_Id : Unbounded_String) return CacheType_Access;
   function getVendor (This : in out CacheType) return Unbounded_String;
   procedure getVendor (This : in out CacheType);
   function getType (This : in out CacheType) return Unbounded_String;
   procedure getType (This : in out CacheType);
   function toString (This : in out CacheType) return Unbounded_String;
   procedure toString (This : in out CacheType);

end org.allbinary.logic.util.cache.CacheType_Package;


