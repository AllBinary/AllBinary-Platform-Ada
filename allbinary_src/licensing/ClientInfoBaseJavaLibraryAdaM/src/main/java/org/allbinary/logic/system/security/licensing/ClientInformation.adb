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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.SystemHardwareFactory_Package; use org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package_References;
with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.system.security.licensing.ClientInformation_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HardwareInterface_Package renames Standard.org.allbinary.logic.system.hardware.HardwareInterface_Package;
   package SystemHardwareFactory_Package renames Standard.org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;
   package NoOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.NoOperatingSystem_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype GenericOperatingSystem_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access;
   function "=" (Left, Right : GenericOperatingSystem_Access) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out ClientInformation'Class) is
   begin
      null;
      This.operatingSystemInterface := GenericOperatingSystem_Access (NoOperatingSystem_Package.NO_OPERATING_SYSTEM);
      
      
      
      
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
        ClientInformation'Class (This).init;
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
        return Java_Unbox (This.licenseServers.objectArray (index));
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
        genericOperatingSystem := ClientInformation'Class (This).getOperatingSystemInterface;
        clientInfoHashtable := StdUtil_Package.getInstance.createHashtable;
        clientInfoHashtable.put (Java_Box (abeClientInformationData.NAME), Java_Box (This.name));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.VERSION), Java_Box (This.version));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.SPECIALNAME), Java_Box (This.specialName));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.LICENSEID), Java_Box (ClientInformation'Class (This).getLicenseId));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.OSNAME), Java_Box (genericOperatingSystem.getName));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.OSARCH), Java_Box (genericOperatingSystem.getArch));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.OSVERSION), Java_Box (genericOperatingSystem.getVersion));
        clientInfoHashtable.put (Java_Box (abeClientInformationData.OS), Java_Box (genericOperatingSystem.toString));
        hardwareInterface := HardwareInterface_Access (SystemHardwareFactory_Package.getInstance.getInstance (genericOperatingSystem));
        hardwareString := Java_Object'Class (hardwareInterface.all).toString;
        clientInfoHashtable.put (Java_Box (abeClientInformationData.HARDWARE), Java_Box (hardwareString));
        return clientInfoHashtable;
   end toHashtable;

   function isSameId (This : in out ClientInformation; alicenseId : Unbounded_String) return Boolean is
   begin
        if (Java_Compare_To (ClientInformation'Class (This).getLicenseId, alicenseId)) = (0) then
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
            newServerName := Java_Unbox (list.objectArray (index));
            for index2 in reverse 0 .. currentSize loop
                nextOldServerName := Java_Unbox (This.licenseServers.objectArray (index));
                if (Java_Compare_To (newServerName, nextOldServerName)) /= (0) then
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
      Java_Result : constant Unbounded_String := ClientInformation'Class (This).getLicenseServer (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLicenseServer;

   procedure isSameId (This : in out ClientInformation; alicenseId : Unbounded_String) is
      Java_Result : constant Boolean := ClientInformation'Class (This).isSameId (alicenseId => alicenseId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSameId;

   procedure isLargerOrDifferentServerList (This : in out ClientInformation; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := ClientInformation'Class (This).isLargerOrDifferentServerList (list_Param => list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLargerOrDifferentServerList;

end org.allbinary.logic.system.security.licensing.ClientInformation_Package;


