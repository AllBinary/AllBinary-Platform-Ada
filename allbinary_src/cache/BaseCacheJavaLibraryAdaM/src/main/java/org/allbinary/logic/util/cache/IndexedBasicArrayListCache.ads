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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package; use org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type IndexedBasicArrayListCache is tagged;
   type IndexedBasicArrayListCache_Access is access all IndexedBasicArrayListCache'Class;
   type IndexedBasicArrayListCache_Access_Array is array (Natural range <>) of IndexedBasicArrayListCache_Access;
   type IndexedBasicArrayListCache_Access_Array_Access is access all IndexedBasicArrayListCache_Access_Array;

   type IndexedBasicArrayListCache is new BaseBasicArrayListCache and CacheInterface with record
      commonStrings : CommonStrings_Access;
      size : Integer;
      index : Integer;
   end record;

   procedure Initialize (This : in out IndexedBasicArrayListCache'Class);
   function Create return IndexedBasicArrayListCache_Access;
   function createCache (size : Integer) return IndexedBasicArrayListCache_Access;
   procedure createCache (size : Integer);
   procedure init (This : in out IndexedBasicArrayListCache; size : Integer);
   function getAt (This : in out IndexedBasicArrayListCache; index : Integer) return Java_Object_Access;
   procedure getAt (This : in out IndexedBasicArrayListCache; index : Integer);
   procedure addDefault (This : in out IndexedBasicArrayListCache);
   procedure addObject (This : in out IndexedBasicArrayListCache; anyType_Param : access Java_Object'Class);
   procedure add (This : in out IndexedBasicArrayListCache; cacheableInterface_Param : access CacheableInterface'Class);
   procedure addArray (This : in out IndexedBasicArrayListCache; cacheableInterfaces : CacheableInterface_Access_Array_Access);
   procedure clear (This : in out IndexedBasicArrayListCache);

end org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package;


