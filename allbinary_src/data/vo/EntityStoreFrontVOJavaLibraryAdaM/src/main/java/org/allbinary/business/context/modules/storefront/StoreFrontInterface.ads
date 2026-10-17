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
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package is

   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type StoreFrontInterface is interface and TableMappingInterface;
   type StoreFrontInterface_Access is access all StoreFrontInterface'Class;
   type StoreFrontInterface_Access_Array is array (Natural range <>) of StoreFrontInterface_Access;
   type StoreFrontInterface_Access_Array_Access is access all StoreFrontInterface_Access_Array;
   function isNameValid (This : in out StoreFrontInterface) return Boolean is abstract;
   function isValid (This : in out StoreFrontInterface) return Boolean is abstract;
   function nameValidationInfo (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function validationInfo (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestHtmlPath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHostName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHostNamePath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHomeHostName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHomeHostNamePath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getBasketName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getHomeHostName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getHomeHostNamePath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getHostName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getHostNamePath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestHomeHostName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestHomeHostNamePath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestHostName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestHostNamePath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getStaticPath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getCategoryPath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getSubStores (This : in out StoreFrontInterface) return BasicArrayList_Access is abstract;
   function getTagLocation (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getPackageLocation (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getInventoryControl (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getContextConfigurationInterface (This : in out StoreFrontInterface) return ContextConfigurationInterface_Access is abstract;
   procedure setContextConfigurationInterface (This : in out StoreFrontInterface; contextConfigurationInterface : ContextConfigurationInterface_Access) is abstract;
   function getFtp (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getFtpPath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getFtpUserName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getFtpPassword (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtp (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtpPath (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtpUserName (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtpPassword (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getTimeCreated (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   function getLastModified (This : in out StoreFrontInterface) return Unbounded_String is abstract;
   procedure setName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setBasketName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setHomeHostName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setHomeHostNamePath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setHostName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setHostNamePath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestHomeHostName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestHomeHostNamePath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestHostName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestHostNamePath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setImagePath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setStaticPath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setCategoryPath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setPackageLocation (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setInventoryControl (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setFtp (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setFtpPath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setFtpUserName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setFtpPassword (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestFtp (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestFtpPath (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestFtpUserName (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTestFtpPassword (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setTimeCreated (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure setLastModified (This : in out StoreFrontInterface; value : Unbounded_String) is abstract;
   procedure install (This : in out StoreFrontInterface; current : Integer; total : Integer) is abstract;

end org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;


