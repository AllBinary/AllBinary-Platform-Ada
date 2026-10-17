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
with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.context.configuration.ContextConfiguration_Package; use org.allbinary.business.context.configuration.ContextConfiguration_Package;
with org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package; use org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbPathUtil_Package; use org.allbinary.logic.io.path.AbPathUtil_Package;
with org.allbinary.logic.string_Id.SpecialCharacterUtil_Package; use org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.apache.commons.lang3.StringEscapeUtils_Package; use org.apache.commons.lang3.StringEscapeUtils_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;

package org.allbinary.business.context.modules.storefront.StoreFront_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ContextConfiguration_Package renames Standard.org.allbinary.business.context.configuration.ContextConfiguration_Package;
   package ContextConfigurationDomDocumentMapping_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package ContextConfigurationInterfaceFactory_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package AbPathUtil_Package renames Standard.org.allbinary.logic.io.path.AbPathUtil_Package;
   package SpecialCharacterUtil_Package renames Standard.org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringEscapeUtils_Package renames Standard.org.apache.commons.lang3.StringEscapeUtils_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type StoreFront is tagged;
   type StoreFront_Access is access all StoreFront'Class;
   type StoreFront_Access_Array is array (Natural range <>) of StoreFront_Access;
   type StoreFront_Access_Array_Access is access all StoreFront_Access_Array;

   type StoreFront is new StoreFrontInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
      stringUtil : StringUtil_Access;
      abPathUtil : AbPathUtil_Access;
      name : Unbounded_String;
      basketName : Unbounded_String;
      homeHostName : Unbounded_String;
      homeHostNamePath : AbPath_Access;
      hostName : Unbounded_String;
      hostNamePath : AbPath_Access;
      testHomeHostName : Unbounded_String;
      testHomeHostNamePath : AbPath_Access;
      testHostName : Unbounded_String;
      testHostNamePath : AbPath_Access;
      imagePath : AbPath_Access;
      staticPath : AbPath_Access;
      categoryPath : AbPath_Access;
      inventoryControl : Unbounded_String;
      contextConfigurationInterface : ContextConfigurationInterface_Access;
      subStores : Unbounded_String;
      tagLocation : Unbounded_String;
      packageLocation : Unbounded_String;
      ftp : Unbounded_String;
      ftpPath : AbPath_Access;
      ftpUserName : Unbounded_String;
      ftpPassword : Unbounded_String;
      testFtp : Unbounded_String;
      testFtpPath : AbPath_Access;
      testFtpUserName : Unbounded_String;
      testFtpPassword : Unbounded_String;
      timeCreated : Unbounded_String;
      lastModified : Unbounded_String;
      MINCHAR : Integer;
      MINSTORENAMELENGTH : Integer;
      MAXCHAR : Integer;
      EMPTY_STRING : Unbounded_String;
      ONE_EMPTY_STRING_ARRAY : Unbounded_String_Array_Access;
   end record;
   RESOURCES : Unbounded_String;

   procedure Initialize (This : in out StoreFront'Class);
   function Create return StoreFront_Access;
   function isColumn (This : in out StoreFront; columnName : Unbounded_String) return Boolean;
   procedure isColumn (This : in out StoreFront; columnName : Unbounded_String);
   function createPath (This : in out StoreFront; key : Unbounded_String; hashMap : HashMap_Access) return AbPath_Access;
   procedure createPath (This : in out StoreFront; key : Unbounded_String; hashMap : HashMap_Access);
   function createPath (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap : HashMap_Access) return AbPath_Access;
   procedure createPath (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap : HashMap_Access);
   function get (This : in out StoreFront; key : Unbounded_String; hashMap : HashMap_Access) return Unbounded_String;
   procedure get (This : in out StoreFront; key : Unbounded_String; hashMap : HashMap_Access);
   function create (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap : HashMap_Access) return Unbounded_String;
   procedure create (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap : HashMap_Access);
   procedure getFormData (This : in out StoreFront; storeHashMap : HashMap_Access);
   function isNameValid (This : in out StoreFront) return Boolean;
   function isValid (This : in out StoreFront) return Boolean;
   function nameValidationInfo (This : in out StoreFront) return Unbounded_String;
   function validationInfo (This : in out StoreFront) return Unbounded_String;
   function getTestHtmlPath (This : in out StoreFront) return Unbounded_String;
   function getCurrentHostName (This : in out StoreFront) return Unbounded_String;
   function getCurrentHostNamePath (This : in out StoreFront) return Unbounded_String;
   function getCurrentHomeHostName (This : in out StoreFront) return Unbounded_String;
   function getCurrentHomeHostNamePath (This : in out StoreFront) return Unbounded_String;
   function getName (This : in out StoreFront) return Unbounded_String;
   function getBasketName (This : in out StoreFront) return Unbounded_String;
   function getHomeHostName (This : in out StoreFront) return Unbounded_String;
   function getHomeHostNamePath (This : in out StoreFront) return Unbounded_String;
   function getHostName (This : in out StoreFront) return Unbounded_String;
   function getHostNamePath (This : in out StoreFront) return Unbounded_String;
   function getTestHomeHostName (This : in out StoreFront) return Unbounded_String;
   function getTestHomeHostNamePath (This : in out StoreFront) return Unbounded_String;
   function getTestHostName (This : in out StoreFront) return Unbounded_String;
   function getTestHostNamePath (This : in out StoreFront) return Unbounded_String;
   function getStaticPath (This : in out StoreFront) return Unbounded_String;
   function getCategoryPath (This : in out StoreFront) return Unbounded_String;
   function getInventoryControl (This : in out StoreFront) return Unbounded_String;
   function getSubStores (This : in out StoreFront) return BasicArrayList_Access;
   function getTagLocation (This : in out StoreFront) return Unbounded_String;
   function getPackageLocation (This : in out StoreFront) return Unbounded_String;
   function getFtp (This : in out StoreFront) return Unbounded_String;
   function getFtpUserName (This : in out StoreFront) return Unbounded_String;
   function getFtpPassword (This : in out StoreFront) return Unbounded_String;
   function getTestFtp (This : in out StoreFront) return Unbounded_String;
   function getTestFtpUserName (This : in out StoreFront) return Unbounded_String;
   function getTestFtpPassword (This : in out StoreFront) return Unbounded_String;
   function getFtpPath (This : in out StoreFront) return Unbounded_String;
   function getTestFtpPath (This : in out StoreFront) return Unbounded_String;
   function getTimeCreated (This : in out StoreFront) return Unbounded_String;
   function getLastModified (This : in out StoreFront) return Unbounded_String;
   procedure setName (This : in out StoreFront; value : Unbounded_String);
   procedure setBasketName (This : in out StoreFront; value : Unbounded_String);
   procedure setHomeHostName (This : in out StoreFront; value : Unbounded_String);
   procedure setHomeHostNamePath (This : in out StoreFront; value : Unbounded_String);
   procedure setHostName (This : in out StoreFront; value : Unbounded_String);
   procedure setHostNamePath (This : in out StoreFront; value : Unbounded_String);
   procedure setTestHomeHostName (This : in out StoreFront; value : Unbounded_String);
   procedure setTestHomeHostNamePath (This : in out StoreFront; value : Unbounded_String);
   procedure setTestHostName (This : in out StoreFront; value : Unbounded_String);
   procedure setTestHostNamePath (This : in out StoreFront; value : Unbounded_String);
   procedure setImagePath (This : in out StoreFront; value : Unbounded_String);
   procedure setStaticPath (This : in out StoreFront; value : Unbounded_String);
   procedure setCategoryPath (This : in out StoreFront; value : Unbounded_String);
   procedure setSubStores (This : in out StoreFront; value : Unbounded_String);
   procedure setTagLocation (This : in out StoreFront; value : Unbounded_String);
   procedure setPackageLocation (This : in out StoreFront; value : Unbounded_String);
   procedure setInventoryControl (This : in out StoreFront; value : Unbounded_String);
   procedure getPackageLocation (This : in out StoreFront; value : Unbounded_String);
   procedure setFtp (This : in out StoreFront; value : Unbounded_String);
   procedure setFtpUserName (This : in out StoreFront; value : Unbounded_String);
   procedure setFtpPassword (This : in out StoreFront; value : Unbounded_String);
   procedure setTestFtp (This : in out StoreFront; value : Unbounded_String);
   procedure setTestFtpUserName (This : in out StoreFront; value : Unbounded_String);
   procedure setTestFtpPassword (This : in out StoreFront; value : Unbounded_String);
   procedure setTimeCreated (This : in out StoreFront; value : Unbounded_String);
   procedure setLastModified (This : in out StoreFront; value : Unbounded_String);
   procedure setFtpPath (This : in out StoreFront; value : Unbounded_String);
   procedure setTestFtpPath (This : in out StoreFront; value : Unbounded_String);
   function createDirectories (This : in out StoreFront) return Boolean;
   procedure install (This : in out StoreFront; current : Integer; total : Integer);
   procedure installViews (This : in out StoreFront; fromDirectoryAbPath : AbPath_Access; toDirectoryAbPath : AbPath_Access; current : Integer; total : Integer);
   procedure installResources (This : in out StoreFront; fromDirectoryAbPath : AbPath_Access; current : Integer; total : Integer);
   procedure installMedia (This : in out StoreFront; fromDirectoryAbPath : AbPath_Access; current : Integer; total : Integer);
   function toVector (This : in out StoreFront) return BasicArrayList_Access;
   function toHashMap (This : in out StoreFront) return HashMap_Access;
   function getKey (This : in out StoreFront) return Java_Object_Access;
   function getContextConfigurationInterface (This : in out StoreFront) return ContextConfigurationInterface_Access;
   procedure setContextConfigurationInterface (This : in out StoreFront; contextConfigurationInterface : ContextConfigurationInterface_Access);

end org.allbinary.business.context.modules.storefront.StoreFront_Package;


