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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.input.media.image.InputImageType_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type InputImageType is tagged;
   type InputImageType_Access is access all InputImageType'Class;
   type InputImageType_Access_Array is array (Natural range <>) of InputImageType_Access;
   type InputImageType_Access_Array_Access is access all InputImageType_Access_Array;

   type InputImageType is new Java_Object with record
      name : Unbounded_String;
      index : Integer;
   end record;
   hashMap : HashMap_Access;
   TYPE_VECTOR : BasicArrayList_Access;
   CAPTURE : InputImageType_Access;
   COMPARISON : InputImageType_Access;
   MOTION : InputImageType_Access;

   procedure Initialize (This : in out InputImageType'Class; name : Unbounded_String; index : Integer);
   function Create (name : Unbounded_String; index : Integer) return InputImageType_Access;
   function toString (This : in out InputImageType) return Unbounded_String;
   function getName (This : in out InputImageType) return Unbounded_String;
   function getInstance (imageTypeString : Unbounded_String) return InputImageType_Access;
   procedure getInstance (imageTypeString : Unbounded_String);
   function getAllAsVector return BasicArrayList_Access;
   function getIndex (This : in out InputImageType) return Integer;

end org.allbinary.input.media.image.InputImageType_Package;


