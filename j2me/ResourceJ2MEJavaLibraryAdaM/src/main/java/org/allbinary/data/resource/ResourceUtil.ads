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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.data.resource.ResourceUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ResourceUtil is tagged;
   type ResourceUtil_Access is access all ResourceUtil'Class;
   type ResourceUtil_Access_Array is array (Natural range <>) of ResourceUtil_Access;
   type ResourceUtil_Access_Array_Access is access all ResourceUtil_Access_Array;
   type ResourceUtil_Access_Array_Access_Array is array (Natural range <>) of ResourceUtil_Access_Array_Access;
   type ResourceUtil_Access_Array_Access_Array_Access is access all ResourceUtil_Access_Array_Access_Array;

   type ResourceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ResourceUtil_Access;

   procedure Initialize (This : in out ResourceUtil'Class);
   function Create return ResourceUtil_Access;
   function getInstance return ResourceUtil_Access;
   procedure setLoadingPaths (This : in out ResourceUtil; path : Unbounded_String; ext : Unbounded_String);
   function getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) return InputStream_Access;
   procedure getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String);
   function getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer) return InputStream_Access;
   procedure getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer);
   procedure addResource (This : in out ResourceUtil; resource : Unbounded_String; value : Integer);

end org.allbinary.data.resource.ResourceUtil_Package;


