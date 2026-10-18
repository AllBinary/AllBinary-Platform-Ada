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

package org.allbinary.logic.util.cache.ImageCacheable_Package is


   type ImageCacheable is tagged;
   type ImageCacheable_Access is access all ImageCacheable'Class;
   type ImageCacheable_Access_Array is array (Natural range <>) of ImageCacheable_Access;
   type ImageCacheable_Access_Array_Access is access all ImageCacheable_Access_Array;
   type ImageCacheable_Access_Array_Access_Array is array (Natural range <>) of ImageCacheable_Access_Array_Access;
   type ImageCacheable_Access_Array_Access_Array_Access is access all ImageCacheable_Access_Array_Access_Array;

   type ImageCacheable is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ImageCacheable'Class; name : Unbounded_String; anyType_Param : access Java_Object'Class);
   function Create (name : Unbounded_String; anyType_Param : access Java_Object'Class) return ImageCacheable_Access;
   function getKey (This : in out ImageCacheable) return Java_Object_Access;
   function toString (This : in out ImageCacheable) return Unbounded_String;

end org.allbinary.logic.util.cache.ImageCacheable_Package;


