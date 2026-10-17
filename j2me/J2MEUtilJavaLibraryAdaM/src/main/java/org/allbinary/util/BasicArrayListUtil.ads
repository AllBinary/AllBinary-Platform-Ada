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
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.ImmutableBasicArrayList_Package; use org.allbinary.util.ImmutableBasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.util.BasicArrayListUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type BasicArrayListUtil is tagged;
   type BasicArrayListUtil_Access is access all BasicArrayListUtil'Class;
   type BasicArrayListUtil_Access_Array is array (Natural range <>) of BasicArrayListUtil_Access;
   type BasicArrayListUtil_Access_Array_Access is access all BasicArrayListUtil_Access_Array;

   type BasicArrayListUtil is new Java_Object with record
      NULL_ARRAY_OF_ARRAY : BasicArrayList_Access_Array_Access_Array_Access;
      myRandomFactory : MyRandomFactory_Access;
      immutableInstance : BasicArrayList_Access;
   end record;
   instance : BasicArrayListUtil_Access;

   procedure Initialize (This : in out BasicArrayListUtil'Class);
   function Create return BasicArrayListUtil_Access;
   function getInstance return BasicArrayListUtil_Access;
   function getRandom (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access;
   procedure getRandom (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getRandomIndex (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer;
   procedure getRandomIndex (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure reverse_Id (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function log (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String;
   procedure log (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getImmutableInstance (This : in out BasicArrayListUtil) return BasicArrayList_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.util.BasicArrayListUtil_Package;


