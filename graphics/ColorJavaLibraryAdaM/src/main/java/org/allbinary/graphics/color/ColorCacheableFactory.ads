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
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;

package org.allbinary.graphics.color.ColorCacheableFactory_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CacheableInterfaceFactoryInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;

   type ColorCacheableFactory is tagged;
   type ColorCacheableFactory_Access is access all ColorCacheableFactory'Class;
   type ColorCacheableFactory_Access_Array is array (Natural range <>) of ColorCacheableFactory_Access;
   type ColorCacheableFactory_Access_Array_Access is access all ColorCacheableFactory_Access_Array;
   type ColorCacheableFactory_Access_Array_Access_Array is array (Natural range <>) of ColorCacheableFactory_Access_Array_Access;
   type ColorCacheableFactory_Access_Array_Access_Array_Access is access all ColorCacheableFactory_Access_Array_Access_Array;

   type ColorCacheableFactory is new Java_Object and CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out ColorCacheableFactory'Class);
   function Create return ColorCacheableFactory_Access;
   function getInstance (This : in out ColorCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure getInstance (This : in out ColorCacheableFactory; key_Param : access Java_Object'Class);
   function getInstance (This : in out ColorCacheableFactory; Value : Unbounded_String) return CacheableInterface_Access;
   procedure getInstance (This : in out ColorCacheableFactory; Value : Unbounded_String);

end org.allbinary.graphics.color.ColorCacheableFactory_Package;


