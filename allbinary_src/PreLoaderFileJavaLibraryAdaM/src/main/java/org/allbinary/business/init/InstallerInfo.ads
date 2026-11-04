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

limited with org.allbinary.business.init.InstallerInfo_Package;
package org.allbinary.business.init.InstallerInfo_Package_References is
   type InstallerInfo_Access is access all org.allbinary.business.init.InstallerInfo_Package.InstallerInfo'Class;
   type InstallerInfo_Access_Array is array (Natural range <>) of InstallerInfo_Access;
   type InstallerInfo_Access_Array_Access is access all InstallerInfo_Access_Array;
   type InstallerInfo_Access_Array_Access_Array is array (Natural range <>) of InstallerInfo_Access_Array_Access;
   type InstallerInfo_Access_Array_Access_Array_Access is access all InstallerInfo_Access_Array_Access_Array;
end org.allbinary.business.init.InstallerInfo_Package_References;

with org.allbinary.business.init.InstallerInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.business.init.InstallerInfo_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InstallerInfo_Access is org.allbinary.business.init.InstallerInfo_Package_References.InstallerInfo_Access;
   function "=" (Left, Right : InstallerInfo_Access) return Boolean renames org.allbinary.business.init.InstallerInfo_Package_References."=";
   subtype InstallerInfo_Access_Array is org.allbinary.business.init.InstallerInfo_Package_References.InstallerInfo_Access_Array;
   function "=" (Left, Right : InstallerInfo_Access_Array) return Boolean renames org.allbinary.business.init.InstallerInfo_Package_References."=";
   subtype InstallerInfo_Access_Array_Access is org.allbinary.business.init.InstallerInfo_Package_References.InstallerInfo_Access_Array_Access;
   function "=" (Left, Right : InstallerInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.InstallerInfo_Package_References."=";
   subtype InstallerInfo_Access_Array_Access_Array is org.allbinary.business.init.InstallerInfo_Package_References.InstallerInfo_Access_Array_Access_Array;
   function "=" (Left, Right : InstallerInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.InstallerInfo_Package_References."=";
   subtype InstallerInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.InstallerInfo_Package_References.InstallerInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InstallerInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.InstallerInfo_Package_References."=";

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
   function getPassword (This : in out InstallerInfo) return Unbounded_String;
   function isValid (This : in out InstallerInfo; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure isValid (This : in out InstallerInfo; userName : Unbounded_String; password : Unbounded_String);

end org.allbinary.business.init.InstallerInfo_Package;


