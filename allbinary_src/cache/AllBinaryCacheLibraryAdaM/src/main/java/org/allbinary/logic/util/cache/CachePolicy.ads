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

package org.allbinary.logic.util.cache.CachePolicy_Package is


   type CachePolicy is tagged;
   type CachePolicy_Access is access all CachePolicy'Class;
   type CachePolicy_Access_Array is array (Natural range <>) of CachePolicy_Access;
   type CachePolicy_Access_Array_Access is access all CachePolicy_Access_Array;

   type CachePolicy is new Java_Object with record
      name : Unbounded_String;
      maxTime : Long_Long_Integer;
      maxSize : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out CachePolicy'Class; name : Unbounded_String; maxTime : Long_Long_Integer; maxSize : Long_Long_Integer);
   function Create (name : Unbounded_String; maxTime : Long_Long_Integer; maxSize : Long_Long_Integer) return CachePolicy_Access;
   function getMaxTime (This : in out CachePolicy) return Long_Long_Integer;
   procedure getMaxTime (This : in out CachePolicy);
   procedure setMaxTime (This : in out CachePolicy; maxTime : Long_Long_Integer);
   function getMaxSize (This : in out CachePolicy) return Long_Long_Integer;
   procedure getMaxSize (This : in out CachePolicy);
   procedure setMaxSize (This : in out CachePolicy; maxSize : Long_Long_Integer);
   function getName (This : in out CachePolicy) return Unbounded_String;
   procedure getName (This : in out CachePolicy);

end org.allbinary.logic.util.cache.CachePolicy_Package;


