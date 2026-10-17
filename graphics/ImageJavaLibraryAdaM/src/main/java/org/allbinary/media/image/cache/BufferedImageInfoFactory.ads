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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.media.image.cache.BufferedImageInfoFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type BufferedImageInfoFactory is tagged;
   type BufferedImageInfoFactory_Access is access all BufferedImageInfoFactory'Class;
   type BufferedImageInfoFactory_Access_Array is array (Natural range <>) of BufferedImageInfoFactory_Access;
   type BufferedImageInfoFactory_Access_Array_Access is access all BufferedImageInfoFactory_Access_Array;

   type BufferedImageInfoFactory is new Java_Object with null record;
   hashMap : HashMap_Access;

   procedure Initialize (This : in out BufferedImageInfoFactory'Class);
   function Create return BufferedImageInfoFactory_Access;
   function getInstance (width : Integer; height : Integer; type_Id : Integer) return BufferedImageInfo_Access;
   procedure getInstance (width : Integer; height : Integer; type_Id : Integer);

end org.allbinary.media.image.cache.BufferedImageInfoFactory_Package;


