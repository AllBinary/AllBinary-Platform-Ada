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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NameSpaceRequestParam is tagged;
   type NameSpaceRequestParam_Access is access all NameSpaceRequestParam'Class;
   type NameSpaceRequestParam_Access_Array is array (Natural range <>) of NameSpaceRequestParam_Access;
   type NameSpaceRequestParam_Access_Array_Access is access all NameSpaceRequestParam_Access_Array;
   type NameSpaceRequestParam_Access_Array_Access_Array is array (Natural range <>) of NameSpaceRequestParam_Access_Array_Access;
   type NameSpaceRequestParam_Access_Array_Access_Array_Access is access all NameSpaceRequestParam_Access_Array_Access_Array;

   type NameSpaceRequestParam is new Java_Object with record
      logUtil : LogUtil_Access;
      nameSpaceVector : BasicArrayList_Access;
      nameSpacePropertiesHashMap : HashMap_Access;
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out NameSpaceRequestParam'Class; nameSpace : Unbounded_String; value : Unbounded_String);
   function Create (nameSpace : Unbounded_String; value : Unbounded_String) return NameSpaceRequestParam_Access;
   function getPackages (This : in out NameSpaceRequestParam) return BasicArrayList_Access;
   function getPackageProperties (This : in out NameSpaceRequestParam; packageIndex : Integer) return HashMap_Access;
   procedure getPackageProperties (This : in out NameSpaceRequestParam; packageIndex : Integer);
   function getValue (This : in out NameSpaceRequestParam) return Unbounded_String;
   function generatePackagePropertiesHashMap (This : in out NameSpaceRequestParam; properties : Unbounded_String) return HashMap_Access;
   procedure generatePackagePropertiesHashMap (This : in out NameSpaceRequestParam; properties : Unbounded_String);

end org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package;


