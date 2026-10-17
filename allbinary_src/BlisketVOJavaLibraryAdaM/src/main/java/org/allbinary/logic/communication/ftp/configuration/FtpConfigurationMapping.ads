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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type FtpConfigurationMapping is tagged;
   type FtpConfigurationMapping_Access is access all FtpConfigurationMapping'Class;
   type FtpConfigurationMapping_Access_Array is array (Natural range <>) of FtpConfigurationMapping_Access;
   type FtpConfigurationMapping_Access_Array_Access is access all FtpConfigurationMapping_Access_Array;

   type FtpConfigurationMapping is new TableMappingInterface with record
      ftpConfigurationInterface : FtpConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out FtpConfigurationMapping'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class);
   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) return FtpConfigurationMapping_Access;
   function toHashMap (This : in out FtpConfigurationMapping) return HashMap_Access;
   function getKey (This : in out FtpConfigurationMapping) return Java_Object_Access;
   function toVector (This : in out FtpConfigurationMapping) return BasicArrayList_Access;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;


