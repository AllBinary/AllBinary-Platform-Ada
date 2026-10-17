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
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;

package org.allbinary.business.user.UserInterface_Package is

   package UserConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;

   type UserInterface is interface and TableMappingInterface and ValidationInterface;
   type UserInterface_Access is access all UserInterface'Class;
   type UserInterface_Access_Array is array (Natural range <>) of UserInterface_Access;
   type UserInterface_Access_Array_Access is access all UserInterface_Access_Array;
   procedure setUserName (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setPrefixName (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setFirstName (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setLastName (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setMiddleName (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setSuffixName (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setCompany (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setPositionAtCompany (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setMainEmail (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setSecondaryEmail (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setHomePhone (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setCellPhone (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setWorkPhone (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setOtherContact (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setElectronicContact (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setFax (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setRole (This : in out UserInterface; aRole_Param : access UserRole_Package.UserRole'Class) is abstract;
   procedure setEncryption (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setSecret (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setPassword (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure setPermissions (This : in out UserInterface; value : Unbounded_String) is abstract;
   procedure enable (This : in out UserInterface) is abstract;
   procedure setEnable (This : in out UserInterface; enable : Unbounded_String) is abstract;
   function getUserName (This : in out UserInterface) return Unbounded_String is abstract;
   function getPrefixName (This : in out UserInterface) return Unbounded_String is abstract;
   function getFirstName (This : in out UserInterface) return Unbounded_String is abstract;
   function getLastName (This : in out UserInterface) return Unbounded_String is abstract;
   function getMiddleName (This : in out UserInterface) return Unbounded_String is abstract;
   function getSuffixName (This : in out UserInterface) return Unbounded_String is abstract;
   function getCompany (This : in out UserInterface) return Unbounded_String is abstract;
   function getPositionAtCompany (This : in out UserInterface) return Unbounded_String is abstract;
   function getMainEmail (This : in out UserInterface) return Unbounded_String is abstract;
   function getSecondaryEmail (This : in out UserInterface) return Unbounded_String is abstract;
   function getHomePhone (This : in out UserInterface) return Unbounded_String is abstract;
   function getCellPhone (This : in out UserInterface) return Unbounded_String is abstract;
   function getWorkPhone (This : in out UserInterface) return Unbounded_String is abstract;
   function getOtherContact (This : in out UserInterface) return Unbounded_String is abstract;
   function getElectronicContact (This : in out UserInterface) return Unbounded_String is abstract;
   function getFax (This : in out UserInterface) return Unbounded_String is abstract;
   function getRole (This : in out UserInterface) return UserRole_Access is abstract;
   function getEncryption (This : in out UserInterface) return Unbounded_String is abstract;
   function getSecret (This : in out UserInterface) return Unbounded_String is abstract;
   function getPassword (This : in out UserInterface) return Unbounded_String is abstract;
   function getPermissions (This : in out UserInterface) return Unbounded_String is abstract;
   function getUserConfigurationInterface (This : in out UserInterface) return UserConfigurationInterface_Access is abstract;
   procedure setUserConfigurationInterface (This : in out UserInterface; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) is abstract;
   function toPasswordHashMap (This : in out UserInterface) return HashMap_Access is abstract;
   procedure validateSession (This : in out UserInterface; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is abstract;
   procedure updateSession (This : in out UserInterface; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is abstract;
   function isSessionValid (This : in out UserInterface) return Boolean is abstract;

end org.allbinary.business.user.UserInterface_Package;


