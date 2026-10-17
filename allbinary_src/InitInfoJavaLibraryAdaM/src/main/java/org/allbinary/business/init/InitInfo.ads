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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.init.InitInfoEntity_Package; use org.allbinary.business.init.InitInfoEntity_Package;

package org.allbinary.business.init.InitInfo_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type InitInfo is tagged;
   type InitInfo_Access is access all InitInfo'Class;
   type InitInfo_Access_Array is array (Natural range <>) of InitInfo_Access;
   type InitInfo_Access_Array_Access is access all InitInfo_Access_Array;

   type InitInfo is new Java_Object with record
      TESTING : Unbounded_String;
      MAINPATH : Unbounded_String;
      TESTHTMLPATH : Unbounded_String;
      testing_Case : Unbounded_String;
      mainPath_Case : AbPath_Access;
      testHtmlPath_Case : AbPath_Access;
      hasRead : Boolean;
   end record;
   instance : InitInfo_Access;

   procedure Initialize (This : in out InitInfo'Class);
   function Create return InitInfo_Access;
   function getInstance return InitInfo_Access;
   procedure set (This : in out InitInfo);
   procedure set (This : in out InitInfo; hashMap_Param : access HashMap_Package.HashMap'Class);
   procedure get (This : in out InitInfo);
   procedure setHasRead (This : in out InitInfo; value : Boolean);
   procedure updateIfNeeded (This : in out InitInfo);
   function isTesting (This : in out InitInfo) return Boolean;
   function getTesting (This : in out InitInfo) return Unbounded_String;
   function getTestHtmlPath (This : in out InitInfo) return Unbounded_String;
   function getMainPath (This : in out InitInfo) return Unbounded_String;
   procedure setTesting (This : in out InitInfo; value : Unbounded_String);
   procedure setTestHtmlPath (This : in out InitInfo; value_Param : access AbPath_Package.AbPath'Class);
   procedure setMainPath (This : in out InitInfo; value_Param : access AbPath_Package.AbPath'Class);
   function isMainPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure isMainPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class);
   function isTestHtmlPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure isTestHtmlPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class);
   function isTestingValid (This : in out InitInfo; testing_Case : Unbounded_String) return Boolean;
   procedure isTestingValid (This : in out InitInfo; testing_Case : Unbounded_String);
   function toHashMap (This : in out InitInfo) return HashMap_Access;

end org.allbinary.business.init.InitInfo_Package;


