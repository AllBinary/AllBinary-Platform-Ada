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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Random_Package; use java.util.Random_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.password.Password_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames org.allbinary.business.user.UserData_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package SuperCrypt_Package renames org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type Password is tagged;
   type Password_Access is access all Password'Class;
   type Password_Access_Array is array (Natural range <>) of Password_Access;
   type Password_Access_Array_Access is access all Password_Access_Array;

   type Password is new Java_Object with record
      logUtil : LogUtil_Access;
      password : Unbounded_String;
   end record;

   procedure Initialize (This : in out Password'Class; password : Unbounded_String);
   function Create (password : Unbounded_String) return Password_Access;
   procedure set (This : in out Password; value : Unbounded_String);
   function get (This : in out Password) return Unbounded_String;
   procedure get (This : in out Password);
   function isValid (This : in out Password) return Boolean;
   procedure isValid (This : in out Password);
   function getValidationInfo (This : in out Password) return Unbounded_String;
   procedure getValidationInfo (This : in out Password);
   function toVector (This : in out Password; secret : Unbounded_String) return BasicArrayList_Access;
   procedure toVector (This : in out Password; secret : Unbounded_String);
   function toHashMap (This : in out Password; secret : Unbounded_String) return HashMap_Access;
   procedure toHashMap (This : in out Password; secret : Unbounded_String);

end org.allbinary.business.user.password.Password_Package;


