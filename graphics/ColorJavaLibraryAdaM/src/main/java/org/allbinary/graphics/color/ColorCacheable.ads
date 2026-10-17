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

package org.allbinary.graphics.color.ColorCacheable_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;

   type ColorCacheable is tagged;
   type ColorCacheable_Access is access all ColorCacheable'Class;
   type ColorCacheable_Access_Array is array (Natural range <>) of ColorCacheable_Access;
   type ColorCacheable_Access_Array_Access is access all ColorCacheable_Access_Array;

   type ColorCacheable is new CacheableInterface with record
      key : Java_Object_Access;
      color : Color_Access;
   end record;

   procedure Initialize (This : in out ColorCacheable'Class; key : Java_Object_Access);
   function Create (key : Java_Object_Access) return ColorCacheable_Access;
   function getKey (This : in out ColorCacheable) return Java_Object_Access;
   procedure getKey (This : in out ColorCacheable);
   function getColor (This : in out ColorCacheable) return Color_Access;
   procedure getColor (This : in out ColorCacheable);
   procedure setColor (This : in out ColorCacheable; color : Color_Access);

end org.allbinary.graphics.color.ColorCacheable_Package;


