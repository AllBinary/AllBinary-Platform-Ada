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
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;

package org.allbinary.business.init.InstallerInfo_Package is

   package PATH_GLOBALS_Package renames org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbDataInputStream_Package renames org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileLocalInputStream_Package renames org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package DataOutputStreamFactory_Package renames org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package DatabaseEncoder_Package renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
   package WeakCrypt_Package renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package;

   type InstallerInfo is tagged;
   type InstallerInfo_Access is access all InstallerInfo'Class;
   type InstallerInfo_Access_Array is array (Natural range <>) of InstallerInfo_Access;
   type InstallerInfo_Access_Array_Access is access all InstallerInfo_Access_Array;

   type InstallerInfo is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : InstallerInfo_Access;
   INITFILENAME : Unbounded_String;
   PACKAGE_Id : Unbounded_String;
   userName : Unbounded_String;
   password : Unbounded_String;
   hasRead : Boolean;

   procedure Initialize (This : in out InstallerInfo'Class);
   function Create return InstallerInfo_Access;
   procedure write (This : in out InstallerInfo);
   procedure read (This : in out InstallerInfo);
   procedure setHasRead (value : Boolean);
   procedure setUserName (This : in out InstallerInfo; userName : Unbounded_String);
   procedure setPassword (This : in out InstallerInfo; password : Unbounded_String);
   procedure updateIfNeeded (This : in out InstallerInfo);
   function getUserName (This : in out InstallerInfo) return Unbounded_String;
   procedure getUserName (This : in out InstallerInfo);
   function getPassword (This : in out InstallerInfo) return Unbounded_String;
   procedure getPassword (This : in out InstallerInfo);
   function isValid (This : in out InstallerInfo; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure isValid (This : in out InstallerInfo; userName : Unbounded_String; password : Unbounded_String);

end org.allbinary.business.init.InstallerInfo_Package;


