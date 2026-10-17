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
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
--  with javax.microedition.lcdui.Form_Package; use javax.microedition.lcdui.Form_Package;
--  with javax.microedition.rms.InvalidRecordIDException_Package; use javax.microedition.rms.InvalidRecordIDException_Package;
--  with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
--  with javax.microedition.rms.RecordStoreException_Package; use javax.microedition.rms.RecordStoreException_Package;
--  with javax.microedition.rms.RecordStoreNotOpenException_Package; use javax.microedition.rms.RecordStoreNotOpenException_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.TsUtil_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type TsUtil is tagged;
   type TsUtil_Access is access all TsUtil'Class;
   type TsUtil_Access_Array is array (Natural range <>) of TsUtil_Access;
   type TsUtil_Access_Array_Access is access all TsUtil_Access_Array;

   type TsUtil is new Java_Object with null record;
   instance : TsUtil_Access;

   procedure Initialize (This : in out TsUtil'Class);
   function Create return TsUtil_Access;
   function getInstance return TsUtil_Access;
   procedure getInstance;
   function hashCode (This : in out TsUtil; anyType : Java_Object_Access) return Integer;
   procedure hashCode (This : in out TsUtil; anyType : Java_Object_Access);
   procedure waitFor (This : in out TsUtil; any : Java_Object_Access; timeoutMillis : Long_Long_Integer);
   function getRecord (This : in out TsUtil; anyType : Java_Object_Access; recordId : Integer) return Short_Short_Integer_Array_Access;
   procedure getRecord (This : in out TsUtil; anyType : Java_Object_Access; recordId : Integer);
   function compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Integer;
   procedure compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String);
   function equalIgnoreCase (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Boolean;
   procedure equalIgnoreCase (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String);
   function equalsNotstring (This : in out TsUtil; anyType : Java_Object_Access; object2 : Java_Object_Access) return Boolean;
   procedure equalsNotstring (This : in out TsUtil; anyType : Java_Object_Access; object2 : Java_Object_Access);
   function getClassClassLoader (This : in out TsUtil; anyType : Java_Object_Access) return ClassLoader_Access;
   procedure getClassClassLoader (This : in out TsUtil; anyType : Java_Object_Access);
   function toNumberFromChar (This : in out TsUtil; value : Character) return Integer;
   procedure toNumberFromChar (This : in out TsUtil; value : Character);
   function toNumber (This : in out TsUtil; value : Integer) return Integer;
   procedure toNumber (This : in out TsUtil; value : Integer);
   function getByteArray (This : in out TsUtil; string_Id : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure getByteArray (This : in out TsUtil; string_Id : Unbounded_String);
   function isItemListener (This : in out TsUtil; owner : Displayable_Access) return Boolean;
   procedure isItemListener (This : in out TsUtil; owner : Displayable_Access);
   procedure gc (This : in out TsUtil);

end org.allbinary.TsUtil_Package;


