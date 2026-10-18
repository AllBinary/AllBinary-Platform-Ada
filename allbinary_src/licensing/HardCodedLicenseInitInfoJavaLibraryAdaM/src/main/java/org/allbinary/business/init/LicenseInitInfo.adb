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


with org.allbinary.debug.DebugFactory_Package; use org.allbinary.debug.DebugFactory_Package;
with org.allbinary.debug.NoDebug_Package; use org.allbinary.debug.NoDebug_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.business.init.LicenseInitInfo_Package is

   package DebugFactory_Package renames Standard.org.allbinary.debug.DebugFactory_Package;
   package NoDebug_Package renames Standard.org.allbinary.debug.NoDebug_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out LicenseInitInfo'Class) is
   begin
      null;
      This.id := StringUtil_Package.getInstance.EMPTY_STRING;
      This.serverList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseInitInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LicenseInitInfo_Access is
      This : constant LicenseInitInfo_Access := new LicenseInitInfo;
   begin
      LicenseInitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   function getLicenseId (This : in out LicenseInitInfo) return Unbounded_String is
   begin
        return This.id;
   end getLicenseId;

   function getServer (This : in out LicenseInitInfo; index : Integer) return Unbounded_String is
   begin
        return Java_Unbox (This.serverList.get (index));
   end getServer;

   function getNumberOfServers (This : in out LicenseInitInfo) return Integer is
   begin
        return This.serverList.size;
   end getNumberOfServers;

   procedure setLicenseId (This : in out LicenseInitInfo; value : Unbounded_String) is
   begin
        This.id := value;
   end setLicenseId;

   procedure clearServers (This : in out LicenseInitInfo) is
   begin
        This.serverList.clear;
   end clearServers;

   procedure setServer (This : in out LicenseInitInfo; value : Unbounded_String; index : Integer) is
   begin
        This.serverList.addAt (index, value);
   end setServer;

   procedure addServer (This : in out LicenseInitInfo; value : Unbounded_String) is
   begin
        This.serverList.add (value);
   end addServer;

   function getServerList (This : in out LicenseInitInfo) return BasicArrayList_Access is
   begin
        return This.serverList;
   end getServerList;

   procedure setServerList (This : in out LicenseInitInfo; servers_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      servers : constant BasicArrayList_Access := BasicArrayList_Access (servers_Param);
   begin
        if (DebugFactory_Package.getInstance) = (NoDebug_Package.getInstance) then
            This.serverList := servers;
        end if;
   end setServerList;

   procedure getServer (This : in out LicenseInitInfo; index : Integer) is
      Java_Result : constant Unbounded_String := LicenseInitInfo'Class (This).getServer (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getServer;

end org.allbinary.business.init.LicenseInitInfo_Package;


