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
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.username.UserName_Package is

   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type UserName is tagged;
   type UserName_Access is access all UserName'Class;
   type UserName_Access_Array is array (Natural range <>) of UserName_Access;
   type UserName_Access_Array_Access is access all UserName_Access_Array;

   type UserName is new Java_Object with record
      logUtil : LogUtil_Access;
      userName : Unbounded_String;
   end record;
   instance : UserName_Access;

   procedure Initialize (This : in out UserName'Class);
   function Create return UserName_Access;
   procedure Initialize (This : in out UserName'Class; hashMap : HashMap_Access);
   function Create (hashMap : HashMap_Access) return UserName_Access;
   function getInstance return UserName_Access;
   function isValid (This : in out UserName) return Boolean;
   function get (This : in out UserName) return Unbounded_String;
   function isValid (This : in out UserName; aUserName : Unbounded_String) return Boolean;
   procedure isValid (This : in out UserName; aUserName : Unbounded_String);
   function getValidationInfo (aUserName : Unbounded_String) return Unbounded_String;
   procedure getValidationInfo (aUserName : Unbounded_String);

end org.allbinary.business.user.username.UserName_Package;


