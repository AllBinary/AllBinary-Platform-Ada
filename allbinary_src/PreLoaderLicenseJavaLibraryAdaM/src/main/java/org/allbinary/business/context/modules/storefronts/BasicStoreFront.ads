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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package; use org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package;

package org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicStoreFront is tagged;
   type BasicStoreFront_Access is access all BasicStoreFront'Class;
   type BasicStoreFront_Access_Array is array (Natural range <>) of BasicStoreFront_Access;
   type BasicStoreFront_Access_Array_Access is access all BasicStoreFront_Access_Array;

   type BasicStoreFront is new BasicStoreFrontInterface with record
      name : Unbounded_String;
      userName : Unbounded_String;
      basketName : Unbounded_String;
      homeHostName : Unbounded_String;
      homeHostNamePath : Unbounded_String;
      hostName : Unbounded_String;
      hostNamePath : Unbounded_String;
      testHomeHostName : Unbounded_String;
      testHomeHostNamePath : Unbounded_String;
      testHostName : Unbounded_String;
      testHostNamePath : Unbounded_String;
      imagePath : Unbounded_String;
      staticPath : Unbounded_String;
      categoryPath : Unbounded_String;
      inventoryControl : Unbounded_String;
      subStores : Unbounded_String;
      tagLocation : Unbounded_String;
      packageLocation : Unbounded_String;
      ftp : Unbounded_String;
      ftpPath : Unbounded_String;
      ftpUserName : Unbounded_String;
      ftpPassword : Unbounded_String;
      testFtp : Unbounded_String;
      testFtpPath : Unbounded_String;
      testFtpUserName : Unbounded_String;
      testFtpPassword : Unbounded_String;
      timeCreated : Unbounded_String;
      lastModified : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicStoreFront'Class);
   function Create return BasicStoreFront_Access;
   function getTestHtmlPath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestHtmlPath (This : in out BasicStoreFront);
   function getCurrentHostName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getCurrentHostName (This : in out BasicStoreFront);
   function getCurrentHostNamePath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getCurrentHostNamePath (This : in out BasicStoreFront);
   function getCurrentHomeHostName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getCurrentHomeHostName (This : in out BasicStoreFront);
   function getCurrentHomeHostNamePath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getCurrentHomeHostNamePath (This : in out BasicStoreFront);
   function getName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getName (This : in out BasicStoreFront);
   function getUserName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getUserName (This : in out BasicStoreFront);
   function getBasketName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getBasketName (This : in out BasicStoreFront);
   function getHomeHostName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getHomeHostName (This : in out BasicStoreFront);
   function getHomeHostNamePath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getHomeHostNamePath (This : in out BasicStoreFront);
   function getHostName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getHostName (This : in out BasicStoreFront);
   function getHostNamePath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getHostNamePath (This : in out BasicStoreFront);
   function getTestHomeHostName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestHomeHostName (This : in out BasicStoreFront);
   function getTestHomeHostNamePath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestHomeHostNamePath (This : in out BasicStoreFront);
   function getTestHostName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestHostName (This : in out BasicStoreFront);
   function getTestHostNamePath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestHostNamePath (This : in out BasicStoreFront);
   function getStaticPath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getStaticPath (This : in out BasicStoreFront);
   function getCategoryPath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getCategoryPath (This : in out BasicStoreFront);
   function getInventoryControl (This : in out BasicStoreFront) return Unbounded_String;
   procedure getInventoryControl (This : in out BasicStoreFront);
   function getSubStores (This : in out BasicStoreFront) return BasicArrayList_Access;
   procedure getSubStores (This : in out BasicStoreFront);
   function getTagLocation (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTagLocation (This : in out BasicStoreFront);
   function getPackageLocation (This : in out BasicStoreFront) return Unbounded_String;
   procedure getPackageLocation (This : in out BasicStoreFront);
   function getFtp (This : in out BasicStoreFront) return Unbounded_String;
   procedure getFtp (This : in out BasicStoreFront);
   function getFtpUserName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getFtpUserName (This : in out BasicStoreFront);
   function getFtpPassword (This : in out BasicStoreFront) return Unbounded_String;
   procedure getFtpPassword (This : in out BasicStoreFront);
   function getTestFtp (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestFtp (This : in out BasicStoreFront);
   function getTestFtpUserName (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestFtpUserName (This : in out BasicStoreFront);
   function getTestFtpPassword (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestFtpPassword (This : in out BasicStoreFront);
   function getFtpPath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getFtpPath (This : in out BasicStoreFront);
   function getTestFtpPath (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTestFtpPath (This : in out BasicStoreFront);
   function getTimeCreated (This : in out BasicStoreFront) return Unbounded_String;
   procedure getTimeCreated (This : in out BasicStoreFront);
   function getLastModified (This : in out BasicStoreFront) return Unbounded_String;
   procedure getLastModified (This : in out BasicStoreFront);

end org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package;


