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

package org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package is


   type DatabaseConnectionInfoInterface is interface;
   type DatabaseConnectionInfoInterface_Access is access all DatabaseConnectionInfoInterface'Class;
   type DatabaseConnectionInfoInterface_Access_Array is array (Natural range <>) of DatabaseConnectionInfoInterface_Access;
   type DatabaseConnectionInfoInterface_Access_Array_Access is access all DatabaseConnectionInfoInterface_Access_Array;
   function getUrl (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getJdbcDriver (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getName (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getUserName (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getPassword (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getHost (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getSchema (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getServer (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getPort (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   procedure setJdbcDriver (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setName (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setUserName (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setPassword (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setSchema (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setServer (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setPort (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   function getUserNameKey (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getPasswordKey (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;

end org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;


