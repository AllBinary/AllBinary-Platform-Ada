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


package body org.allbinary.business.init.LicenseInitInfo_Package is

   procedure Initialize_Fields (This : in out LicenseInitInfo'Class) is
   begin
      null;
      This.id := StringUtil_Package.getInstance.EMPTY_STRING;
      This.serverList := BasicArrayListD_Package.Create;
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
        return Unbounded_String (This.serverList.get (index));
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

   procedure setServerList (This : in out LicenseInitInfo; servers : BasicArrayList_Access) is
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


