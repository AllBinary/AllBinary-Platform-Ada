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


package body org.allbinary.logic.system.security.licensing.ClientInformation_Package is

   procedure Initialize_Fields (This : in out ClientInformation'Class) is
   begin
      null;
      This.operatingSystemInterface := NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
      This.tsUtil := TsUtil_Package.getInstance;
      
      
      
      
      This.hardSale := True;
      This.licenseId := StringUtil_Package.getInstance.EMPTY_STRING;
      This.licenseServers := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.version := version;
        This.specialName := specialName;
        This.shortName := StringMaker_Package.Create.append (shortName).append (CommonSeps_Package.getInstance.UNDERSCORE).append (version).toString;
        This.init;
   end Initialize;

   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return ClientInformation_Access is
      This : constant ClientInformation_Access := new ClientInformation;
   begin
      ClientInformation_Package.Initialize (This.all, name, version, specialName, shortName);
      return This;
   end Create;

   procedure init (This : in out ClientInformation) is
   begin
        null;
   end init;

   function getOperatingSystemInterface (This : in out ClientInformation) return GenericOperatingSystem_Access is
   begin
        return This.operatingSystemInterface;
   end getOperatingSystemInterface;

   function getName (This : in out ClientInformation) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getSpecialName (This : in out ClientInformation) return Unbounded_String is
   begin
        return This.specialName;
   end getSpecialName;

   function getVersion (This : in out ClientInformation) return Unbounded_String is
   begin
        return This.version;
   end getVersion;

   function getLicenseId (This : in out ClientInformation) return Unbounded_String is
   begin
        return This.licenseId;
   end getLicenseId;

   function getLicenseServers (This : in out ClientInformation) return BasicArrayList_Access is
   begin
        return This.licenseServers;
   end getLicenseServers;

   function getLicenseServer (This : in out ClientInformation; index : Integer) return Unbounded_String is
   begin
        return Unbounded_String (This.licenseServers.objectArray (index));
   end getLicenseServer;

   function getNumberOfLicenseServers (This : in out ClientInformation) return Integer is
   begin
        return This.licenseServers.size;
   end getNumberOfLicenseServers;

   function toHashtable (This : in out ClientInformation) return ABHashtable_Access is
      abeClientInformationData : AbeClientInformationData_Access;
      genericOperatingSystem : GenericOperatingSystem_Access;
      clientInfoHashtable : ABHashtable_Access;
      hardwareInterface : HardwareInterface_Access;
      hardwareString : Unbounded_String;
   begin
        abeClientInformationData := AbeClientInformationData_Package.getInstance;
        genericOperatingSystem := This.getOperatingSystemInterface;
        clientInfoHashtable := StdUtil_Package.getInstance.createHashtable;
        clientInfoHashtable.put (abeClientInformationData.NAME, This.name);
        clientInfoHashtable.put (abeClientInformationData.VERSION, This.version);
        clientInfoHashtable.put (abeClientInformationData.SPECIALNAME, This.specialName);
        clientInfoHashtable.put (abeClientInformationData.LICENSEID, This.getLicenseId);
        clientInfoHashtable.put (abeClientInformationData.OSNAME, genericOperatingSystem.getName);
        clientInfoHashtable.put (abeClientInformationData.OSARCH, genericOperatingSystem.getArch);
        clientInfoHashtable.put (abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion);
        clientInfoHashtable.put (abeClientInformationData.OS, genericOperatingSystem.toString);
        hardwareInterface := SystemHardwareFactory_Package.getInstance.getInstance (genericOperatingSystem);
        hardwareString := hardwareInterface.toString;
        clientInfoHashtable.put (abeClientInformationData.HARDWARE, hardwareString);
        return clientInfoHashtable;
   end toHashtable;

   function isSameId (This : in out ClientInformation; alicenseId : Unbounded_String) return Boolean is
   begin
        if (This.tsUtil.compareTo (This.getLicenseId, alicenseId)) = (0) then
            return True;
        else
            return False;
        end if;
   end isSameId;

   function isLargerOrDifferentServerList (This : in out ClientInformation; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      currentSize : Integer;
      newServerName : Unbounded_String;
      nextOldServerName : Unbounded_String;
      index2 : Integer;
      index : Integer;
   begin
        size := (list.size) - (1);
        currentSize := (This.licenseServers.size) - (1);
        if (size) > (currentSize) then
            return True;
        end if;
        for index in reverse 0 .. size loop
            newServerName := Unbounded_String (list.objectArray (index));
            for index2 in reverse 0 .. currentSize loop
                nextOldServerName := Unbounded_String (This.licenseServers.objectArray (index));
                if (This.tsUtil.compareTo (newServerName, nextOldServerName)) /= (0) then
                    return True;
                end if;
            end loop;
        end loop;
        return False;
   end isLargerOrDifferentServerList;

   procedure setHardSale (This : in out ClientInformation; hardSale : Boolean) is
   begin
        This.hardSale := hardSale;
   end setHardSale;

   function isHardSale (This : in out ClientInformation) return Boolean is
   begin
        return This.hardSale;
   end isHardSale;

   procedure setOperatingSystemInterface (This : in out ClientInformation; operatingSystemInterface_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) is
      operatingSystemInterface : constant GenericOperatingSystem_Access := GenericOperatingSystem_Access (operatingSystemInterface_Param);
   begin
        This.operatingSystemInterface := operatingSystemInterface;
   end setOperatingSystemInterface;

   procedure setLicenseId (This : in out ClientInformation; licenseId : Unbounded_String) is
   begin
        This.licenseId := licenseId;
   end setLicenseId;

   procedure setLicenseServers (This : in out ClientInformation; licenseServers_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      licenseServers : constant BasicArrayList_Access := BasicArrayList_Access (licenseServers_Param);
   begin
        This.licenseServers := licenseServers;
   end setLicenseServers;

   function toShortString (This : in out ClientInformation) return Unbounded_String is
   begin
        return This.shortName;
   end toShortString;

   procedure getLicenseServer (This : in out ClientInformation; index : Integer) is
      Java_Result : constant Unbounded_String := ClientInformation'Class (This).getLicenseServer (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLicenseServer;

   procedure isSameId (This : in out ClientInformation; alicenseId : Unbounded_String) is
      Java_Result : constant Boolean := ClientInformation'Class (This).isSameId (alicenseId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSameId;

   procedure isLargerOrDifferentServerList (This : in out ClientInformation; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := ClientInformation'Class (This).isLargerOrDifferentServerList (list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLargerOrDifferentServerList;

end org.allbinary.logic.system.security.licensing.ClientInformation_Package;


