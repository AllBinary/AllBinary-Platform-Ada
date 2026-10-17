-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with org.allbinary.util.ABHashMap_Package; use org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package; use org.allbinary.util.ABVector_Package;

package org.allbinary.logic.StdUtil_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;
   package JsProperty_Package renames jsinterop.annotations.JsProperty_Package;
   package JsMethod_Package renames jsinterop.annotations.JsMethod_Package;
   package ABHashMap_Package renames org.allbinary.util.ABHashMap_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package ABStack_Package renames org.allbinary.util.ABStack_Package;
   package ABVector_Package renames org.allbinary.util.ABVector_Package;

   type StdUtil is tagged;
   type StdUtil_Access is access all StdUtil'Class;
   type StdUtil_Access_Array is array (Natural range <>) of StdUtil_Access;
   type StdUtil_Access_Array_Access is access all StdUtil_Access_Array;

   type StdUtil is new Java_Object with record
      EMPTY_VECTOR : ABVector_Access;
      NULL_TABLE : ABHashtable_Access;
      NULL_MAP : ABHashMap_Access;
   end record;
   instance : StdUtil_Access;

   procedure Initialize (This : in out StdUtil'Class);
   function Create return StdUtil_Access;
   function getInstance return StdUtil_Access;
   procedure getInstance;
   function createStack (This : in out StdUtil) return ABStack_Access;
   procedure createStack (This : in out StdUtil);
   function createVector (This : in out StdUtil) return ABVector_Access;
   procedure createVector (This : in out StdUtil);
   function createHashtable (This : in out StdUtil) return ABHashtable_Access;
   procedure createHashtable (This : in out StdUtil);
   function createHashMap (This : in out StdUtil) return ABHashMap_Access;
   procedure createHashMap (This : in out StdUtil);

end org.allbinary.logic.StdUtil_Package;


