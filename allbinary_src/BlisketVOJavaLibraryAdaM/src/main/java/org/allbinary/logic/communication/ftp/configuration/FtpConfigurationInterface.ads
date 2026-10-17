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

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package is


   type FtpConfigurationInterface is interface;
   type FtpConfigurationInterface_Access is access all FtpConfigurationInterface'Class;
   type FtpConfigurationInterface_Access_Array is array (Natural range <>) of FtpConfigurationInterface_Access;
   type FtpConfigurationInterface_Access_Array_Access is access all FtpConfigurationInterface_Access_Array;
   function getServer (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   function getPath (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   function getUserName (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   function getPassword (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   procedure setServer (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;
   procedure setPath (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;
   procedure setUserName (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;
   procedure setPassword (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;


