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
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package is

   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;

   type ItemInterface is interface and TableMappingInterface;
   type ItemInterface_Access is access all ItemInterface'Class;
   type ItemInterface_Access_Array is array (Natural range <>) of ItemInterface_Access;
   type ItemInterface_Access_Array_Access is access all ItemInterface_Access_Array;
   type ItemInterface_Access_Array_Access_Array is array (Natural range <>) of ItemInterface_Access_Array_Access;
   type ItemInterface_Access_Array_Access_Array_Access is access all ItemInterface_Access_Array_Access_Array;
   procedure setId (This : in out ItemInterface; itemId : Unbounded_String) is abstract;
   procedure setNumber (This : in out ItemInterface; number : Unbounded_String) is abstract;
   procedure setInBaskets (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setWeight (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setEnabled (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setNewOrUsed (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setSummary (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setDistributor (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setIdUsedByDistributor (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setProducedBy (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setProductionDate (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setStartProductionDate (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setDescription (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setKeywords (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setCategory (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setType (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setSmallImage (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setMediumImage (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setLargeImage (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setTimeEntered (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setLastModified (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setPrice (This : in out ItemInterface; value_Param : access Money_Package.Money'Class) is abstract;
   procedure setComment (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setCustoms (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setDownloads (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setGroups (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setOptions (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setPermissions (This : in out ItemInterface; value : Unbounded_String) is abstract;
   procedure setSpecials (This : in out ItemInterface; value : Unbounded_String) is abstract;
   function getId (This : in out ItemInterface) return Unbounded_String is abstract;
   function getNumber (This : in out ItemInterface) return Unbounded_String is abstract;
   function getInBaskets (This : in out ItemInterface) return Unbounded_String is abstract;
   function getWeight (This : in out ItemInterface) return Unbounded_String is abstract;
   function getEnabled (This : in out ItemInterface) return Unbounded_String is abstract;
   function getNewOrUsed (This : in out ItemInterface) return Unbounded_String is abstract;
   function getSummary (This : in out ItemInterface) return Unbounded_String is abstract;
   function getDistributor (This : in out ItemInterface) return Unbounded_String is abstract;
   function getIdUsedByDistributor (This : in out ItemInterface) return Unbounded_String is abstract;
   function getProducedBy (This : in out ItemInterface) return Unbounded_String is abstract;
   function getProductionDate (This : in out ItemInterface) return Unbounded_String is abstract;
   function getStartProductionDate (This : in out ItemInterface) return Unbounded_String is abstract;
   function getDescription (This : in out ItemInterface) return Unbounded_String is abstract;
   function getKeywords (This : in out ItemInterface) return Unbounded_String is abstract;
   function getCategory (This : in out ItemInterface) return Unbounded_String is abstract;
   function getType (This : in out ItemInterface) return Unbounded_String is abstract;
   function getSmallImage (This : in out ItemInterface) return Unbounded_String is abstract;
   function getMediumImage (This : in out ItemInterface) return Unbounded_String is abstract;
   function getLargeImage (This : in out ItemInterface) return Unbounded_String is abstract;
   function getTimeEntered (This : in out ItemInterface) return Unbounded_String is abstract;
   function getLastModified (This : in out ItemInterface) return Unbounded_String is abstract;
   function getPrice (This : in out ItemInterface) return Money_Access is abstract;
   function getComment (This : in out ItemInterface) return Unbounded_String is abstract;
   function getCustoms (This : in out ItemInterface) return Unbounded_String is abstract;
   function getDownloads (This : in out ItemInterface) return Unbounded_String is abstract;
   function getGroups (This : in out ItemInterface) return Unbounded_String is abstract;
   function getOptions (This : in out ItemInterface) return Unbounded_String is abstract;
   function getPermissions (This : in out ItemInterface) return Unbounded_String is abstract;
   function getSpecials (This : in out ItemInterface) return Unbounded_String is abstract;
   function getTotal (This : in out ItemInterface) return Money_Access is abstract;

end org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;


