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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type SmallBasicColorCacheFactory is tagged;
   type SmallBasicColorCacheFactory_Access is access all SmallBasicColorCacheFactory'Class;
   type SmallBasicColorCacheFactory_Access_Array is array (Natural range <>) of SmallBasicColorCacheFactory_Access;
   type SmallBasicColorCacheFactory_Access_Array_Access is access all SmallBasicColorCacheFactory_Access_Array;

   type SmallBasicColorCacheFactory is new Java_Object with record
      SIZE : Integer;
      INDEX_TO_COLOR : Integer_Array_Access;
      BASIC_COLOR_ARRAY : BasicColor_Access_Array_Access;
      colorIndex : Integer;
   end record;
   instance : SmallBasicColorCacheFactory_Access;

   procedure Initialize (This : in out SmallBasicColorCacheFactory'Class);
   function Create return SmallBasicColorCacheFactory_Access;
   function getInstance return SmallBasicColorCacheFactory_Access;
   procedure add (This : in out SmallBasicColorCacheFactory; basicDefaultColor_Param : access BasicColor_Package.BasicColor'Class);
   function getAndOrCreate (This : in out SmallBasicColorCacheFactory; colorAsInt : Integer) return BasicColor_Access;
   procedure getAndOrCreate (This : in out SmallBasicColorCacheFactory; colorAsInt : Integer);

end org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package;


