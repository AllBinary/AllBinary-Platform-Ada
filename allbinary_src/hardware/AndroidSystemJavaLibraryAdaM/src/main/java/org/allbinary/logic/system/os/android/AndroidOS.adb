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


package body org.allbinary.logic.system.os.android.AndroidOS_Package is

   procedure Initialize_Fields (This : in out AndroidOS'Class) is
   begin
      null;
      This.stringBuffer := StringMaker_Package.Create;
      This.DEVICE_ID := To_Unbounded_String ("DeviceId");
      This.DEVICE_SOFTWARE_VERSION := To_Unbounded_String ("DeviceSoftwareVersion");
      This.LINE_1_NUMBER := To_Unbounded_String ("Line1Number");
      This.OUYA := To_Unbounded_String ("ouya");
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidOS'Class) is
      SDK_VERSION : Integer;
      properties : AndroidSystemProperties_Access;
      commonStrings : CommonSeps_Access;
   begin
      GenericOperatingSystem_Package.Initialize (This);
      Initialize_Fields (This);
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) > (10) then
            This.scalable := True;
        end if;
        properties := AndroidSystemProperties_Package.getInstance;
        commonStrings := CommonSeps_Package.getInstance;
        This.stringBuffer.append (This.DEVICE_ID);
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getDeviceId);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (This.DEVICE_SOFTWARE_VERSION);
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getDeviceSoftwareVersion);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (This.LINE_1_NUMBER);
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getLine1Number);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("NetworkCountryIso"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getNetworkCountryIso);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("NetworkOperator"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getNetworkOperator);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("NetworkOperatorName"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getNetworkOperatorName);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("NetworkType"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.appendint (Integer (properties.getNetworkType));
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("PhoneType"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.appendint (Integer (properties.getPhoneType));
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("SimCountryIso"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getSimCountryIso);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("SimOperator"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getSimOperator);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("SimOperatorName"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getSimOperatorName);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("SimSerialNumber"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getSimSerialNumber);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("SubscriberId"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getSubscriberId);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("VoiceMailAlphaTag"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getVoiceMailAlphaTag);
        This.stringBuffer.append (commonStrings.SPACE);
        This.stringBuffer.append (To_Unbounded_String ("VoiceMailNumber"));
        This.stringBuffer.append (commonStrings.EQUALS);
        This.stringBuffer.append (properties.getVoiceMailNumber);
        This.stringBuffer.append (commonStrings.SPACE);
   end Initialize;

   function Create return AndroidOS_Access is
      This : constant AndroidOS_Access := new AndroidOS;
   begin
      AndroidOS_Package.Initialize (This.all);
      return This;
   end Create;

   function isOverScan (This : in out AndroidOS) return Boolean is
      properties : AndroidSystemProperties_Access;
   begin
        properties := AndroidSystemProperties_Package.getInstance;
        if ((Index (properties.getDevice.toLowerCase, To_String (This.OUYA)) - 1)) >= (0) then
            return True;
        end if;
        return False;
   end isOverScan;

   function getOverScanXPercent (This : in out AndroidOS) return Integer is
   begin
        return 90;
   end getOverScanXPercent;

   function getOverScanYPercent (This : in out AndroidOS) return Integer is
   begin
        return 90;
   end getOverScanYPercent;

   function toString (This : in out AndroidOS) return Unbounded_String is
      osBuffer : StringMaker_Access;
   begin
        osBuffer := StringMaker_Package.Create;
        osBuffer.append (GenericOperatingSystem (This).toString);
        osBuffer.append (CommonSeps_Package.getInstance.SPACE);
        osBuffer.append (To_Unbounded_String ("Other System Info: " & ASCII.LF & ""));
        osBuffer.append (This.stringBuffer.toString);
        return osBuffer.toString;
   end toString;

end org.allbinary.logic.system.os.android.AndroidOS_Package;


