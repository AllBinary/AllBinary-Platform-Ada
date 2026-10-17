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
--  with java.util.Map_Package; use java.util.Map_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.init.db.HistoryDbInitInfo_Package; use org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.init.db.LogDbInitInfo_Package; use org.allbinary.business.init.db.LogDbInitInfo_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package; use org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.installer.Initializer_Package is

   package HistoryDbInitInfo_Package renames org.allbinary.business.init.db.HistoryDbInitInfo_Package;
   package InventoryDbInitInfo_Package renames org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package LogDbInitInfo_Package renames org.allbinary.business.init.db.LogDbInitInfo_Package;
   package StaticPagesDbInitInfo_Package renames org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
   package UserDbInitInfo_Package renames org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type Initializer is tagged;
   type Initializer_Access is access all Initializer'Class;
   type Initializer_Access_Array is array (Natural range <>) of Initializer_Access;
   type Initializer_Access_Array_Access is access all Initializer_Access_Array;

   type Initializer is new Java_Object with record
      logUtil : LogUtil_Access;
      userJdbcDriver : Unbounded_String;
      userName : Unbounded_String;
      userUserName : Unbounded_String;
      userPassword : Unbounded_String;
      userSchema : Unbounded_String;
      userServer : Unbounded_String;
      userPort : Unbounded_String;
      historyJdbcDriver : Unbounded_String;
      historyName : Unbounded_String;
      historyUserName : Unbounded_String;
      historyPassword : Unbounded_String;
      historySchema : Unbounded_String;
      historyServer : Unbounded_String;
      historyPort : Unbounded_String;
      logJdbcDriver : Unbounded_String;
      logName : Unbounded_String;
      logUserName : Unbounded_String;
      logPassword : Unbounded_String;
      logSchema : Unbounded_String;
      logServer : Unbounded_String;
      logPort : Unbounded_String;
      inventoryJdbcDriver : Unbounded_String;
      inventoryName : Unbounded_String;
      inventoryUserName : Unbounded_String;
      inventoryPassword : Unbounded_String;
      inventorySchema : Unbounded_String;
      inventoryServer : Unbounded_String;
      inventoryPort : Unbounded_String;
      staticPagesJdbcDriver : Unbounded_String;
      staticPagesName : Unbounded_String;
      staticPagesUserName : Unbounded_String;
      staticPagesPassword : Unbounded_String;
      staticPagesSchema : Unbounded_String;
      staticPagesServer : Unbounded_String;
      staticPagesPort : Unbounded_String;
   end record;
   MAXDB : Integer;
   MAX : Integer;
   MIN : Integer;
   MINPASSWORD : Integer;

   procedure Initialize (This : in out Initializer'Class; map : Map_Access);
   function Create (map : Map_Access) return Initializer_Access;
   procedure getFormData (This : in out Initializer; hashMap : HashMap_Access);
   function isJdbcDriverValid (This : in out Initializer; jdbcDriverClassPathString : Unbounded_String) return Boolean;
   procedure isJdbcDriverValid (This : in out Initializer; jdbcDriverClassPathString : Unbounded_String);
   function isValid (This : in out Initializer) return Boolean;
   procedure isValid (This : in out Initializer);
   function getJdbcDriverValidationInfo (This : in out Initializer; jdbcDriver : Unbounded_String) return Unbounded_String;
   procedure getJdbcDriverValidationInfo (This : in out Initializer; jdbcDriver : Unbounded_String);
   function getJdbcDriverSolutionInfo (This : in out Initializer) return Unbounded_String;
   procedure getJdbcDriverSolutionInfo (This : in out Initializer);
   function getInvalidInfo (This : in out Initializer) return Unbounded_String;
   procedure getInvalidInfo (This : in out Initializer);
   procedure set (This : in out Initializer);

end org.allbinary.business.installer.Initializer_Package;


