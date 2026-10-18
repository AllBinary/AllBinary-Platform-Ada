-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;

package org.allbinary.logic.system.PlatformAssetManager_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;

   type PlatformAssetManager is tagged;
   type PlatformAssetManager_Access is access all PlatformAssetManager'Class;
   type PlatformAssetManager_Access_Array is array (Natural range <>) of PlatformAssetManager_Access;
   type PlatformAssetManager_Access_Array_Access is access all PlatformAssetManager_Access_Array;

   type PlatformAssetManager is new Java_Object with null record;
   instance : PlatformAssetManager_Access;

   procedure Initialize (This : in out PlatformAssetManager'Class);
   function Create return PlatformAssetManager_Access;
   function getInstance return PlatformAssetManager_Access;
   function getResourceAsStream (This : in out PlatformAssetManager; resource : Unbounded_String) return InputStream_Access;
   procedure getResourceAsStream (This : in out PlatformAssetManager; resource : Unbounded_String);

end org.allbinary.logic.system.PlatformAssetManager_Package;


