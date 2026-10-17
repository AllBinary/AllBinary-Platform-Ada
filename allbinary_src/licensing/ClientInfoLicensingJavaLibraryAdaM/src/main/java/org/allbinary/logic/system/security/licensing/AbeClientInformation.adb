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


package body org.allbinary.logic.system.security.licensing.AbeClientInformation_Package is

   procedure Initialize_Fields (This : in out AbeClientInformation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AbeClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) is
   begin
        ClientInformation_Package.Initialize (This, name, version, specialName, shortName);
        Initialize_Fields (This);
   end Initialize;

   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return AbeClientInformation_Access is
      This : constant AbeClientInformation_Access := new AbeClientInformation;
   begin
      AbeClientInformation_Package.Initialize (This.all, name, version, specialName, shortName);
      return This;
   end Create;

   procedure init (This : in out AbeClientInformation) is
      licenseInitInfo : LicenseInitInfo_Access;
      stringValidationUtil : StringValidationUtil_Access;
      NONE : Unbounded_String;
      commonStrings : CommonStrings_Access;
      logUtil : LogUtil_Access;
   begin
        begin
            This.setOperatingSystemInterface (OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance);
            licenseInitInfo := LicenseInitInfoUtil_Package.getInstance.read;
            This.setLicenseId (licenseInitInfo.getLicenseId);
            This.setLicenseServers (licenseInitInfo.getServerList);
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if stringValidationUtil.isEmpty (This.getLicenseId) then
                NONE := To_Unbounded_String ("No License Id");
                This.setLicenseId (NONE);
            end if;
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Special Name: ")).append (This.getSpecialName).toString, This'Unchecked_Access, commonStrings.CONSTRUCTOR);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end init;

end org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;


