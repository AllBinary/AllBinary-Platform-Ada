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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.system.loader.ClassLoader_Package; use org.allbinary.logic.system.loader.ClassLoader_Package;

package org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type WebappClassLoaderInfo is tagged;
   type WebappClassLoaderInfo_Access is access all WebappClassLoaderInfo'Class;
   type WebappClassLoaderInfo_Access_Array is array (Natural range <>) of WebappClassLoaderInfo_Access;
   type WebappClassLoaderInfo_Access_Array_Access is access all WebappClassLoaderInfo_Access_Array;

   type WebappClassLoaderInfo is new Java_Object with null record;
   classLoader : Java_Object_Access;

   procedure Initialize (This : in out WebappClassLoaderInfo'Class);
   function Create return WebappClassLoaderInfo_Access;
   procedure setLoader (classLoader_Param : access ClassLoader'Class);
   function getLoader return ClassLoader_Access;

end org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;


