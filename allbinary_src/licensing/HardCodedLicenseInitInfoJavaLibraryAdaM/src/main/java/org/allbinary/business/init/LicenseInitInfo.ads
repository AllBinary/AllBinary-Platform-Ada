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

limited with org.allbinary.business.init.LicenseInitInfo_Package;
package org.allbinary.business.init.LicenseInitInfo_Package_References is
   type LicenseInitInfo_Access is access all org.allbinary.business.init.LicenseInitInfo_Package.LicenseInitInfo'Class;
   type LicenseInitInfo_Access_Array is array (Natural range <>) of LicenseInitInfo_Access;
   type LicenseInitInfo_Access_Array_Access is access all LicenseInitInfo_Access_Array;
   type LicenseInitInfo_Access_Array_Access_Array is array (Natural range <>) of LicenseInitInfo_Access_Array_Access;
   type LicenseInitInfo_Access_Array_Access_Array_Access is access all LicenseInitInfo_Access_Array_Access_Array;
end org.allbinary.business.init.LicenseInitInfo_Package_References;

with org.allbinary.business.init.LicenseInitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.business.init.LicenseInitInfo_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseInitInfo_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access;
   function "=" (Left, Right : LicenseInitInfo_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array;
   function "=" (Left, Right : LicenseInitInfo_Access_Array) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access;
   function "=" (Left, Right : LicenseInitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";

   type LicenseInitInfo is new Java_Object with record
      id : Unbounded_String;
      serverList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out LicenseInitInfo'Class);
   function Create return LicenseInitInfo_Access;
   function getLicenseId (This : in out LicenseInitInfo) return Unbounded_String;
   function getServer (This : in out LicenseInitInfo; index : Integer) return Unbounded_String;
   procedure getServer (This : in out LicenseInitInfo; index : Integer);
   function getNumberOfServers (This : in out LicenseInitInfo) return Integer;
   procedure setLicenseId (This : in out LicenseInitInfo; value : Unbounded_String);
   procedure clearServers (This : in out LicenseInitInfo);
   procedure setServer (This : in out LicenseInitInfo; value : Unbounded_String; index : Integer);
   procedure addServer (This : in out LicenseInitInfo; value : Unbounded_String);
   function getServerList (This : in out LicenseInitInfo) return BasicArrayList_Access;
   procedure setServerList (This : in out LicenseInitInfo; servers_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.business.init.LicenseInitInfo_Package;


