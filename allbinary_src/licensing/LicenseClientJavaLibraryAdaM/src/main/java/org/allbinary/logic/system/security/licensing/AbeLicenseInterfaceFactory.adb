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


package body org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out AbeLicenseInterfaceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.time := 0;
      This.check := False;
      This.checkPeriod := 36000000;
      This.abeLicenseInterface := null;
   end Initialize_Fields;


   function getInstance return AbeLicenseInterfaceFactory_Access is
   begin
        return AbeLicenseInterfaceFactory_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out AbeLicenseInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbeLicenseInterfaceFactory_Access is
      This : constant AbeLicenseInterfaceFactory_Access := new AbeLicenseInterfaceFactory;
   begin
      AbeLicenseInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getLicenseInstance (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return AbeLicenseInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        if AbeLicenseInterfaceFactory'Class (This).isTimeToGetKey then
            return AbeLicenseInterfaceFactory'Class (This).get (abeClientInformation);
        else
            return This.abeLicenseInterface;
        end if;
   end getLicenseInstance;

   --  throws LicensingException
   function get (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return AbeLicenseInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      licenseClient : AbeLicenseClient_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Getting Keys"), AbeLicenseInterfaceFactory_Access'(This'Unchecked_Access), This.commonStrings.GET);
            This.abeLicenseInterface := AbeNoLicense_Package.getInstance;
            licenseClient := AbeLicenseClient_Package.Create;
            This.abeLicenseInterface := licenseClient.get (abeClientInformation);
            if (This.abeLicenseInterface) /= (null) then
                This.logUtil.putF (To_Unbounded_String ("Default Key: ") & Java_Image (This.abeLicenseInterface.getKey (AbeClientInformationData_Package.getInstance.KEY)), AbeLicenseInterfaceFactory_Access'(This'Unchecked_Access), This.commonStrings.GET);
            end if;
            return This.abeLicenseInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Licensing IO Error"), AbeLicenseInterfaceFactory_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            Java_Throw (Java_New_Exception ("LicensingException", To_Unbounded_String ("License Server Connection Error")));
                end;
        end;
   end get;

   function isTimeToGetKey (This : in out AbeLicenseInterfaceFactory) return Boolean is
      calendar : Calendar_Access;
      currentTime : Long_Long_Integer;
   begin
        calendar := Calendar_Package.getInstance;
        currentTime := calendar.getTimeInMillis;
        if (((((This.abeLicenseInterface) = (null)) or else ((This.abeLicenseInterface) = (AbeNoLicense_Package.getInstance))) or else (not (This.abeLicenseInterface.hasKey))) or else (AbeLicenseInterfaceFactory'Class (This).isCheck)) or else (((currentTime) - (Long_Long_Integer (This.checkPeriod))) > (This.time)) then
            This.abeLicenseInterface := null;
            This.time := currentTime;
            return True;
        else
            return False;
        end if;
   end isTimeToGetKey;

   procedure setCheck (This : in out AbeLicenseInterfaceFactory; check : Boolean) is
   begin
        This.check := check;
   end setCheck;

   function isCheck (This : in out AbeLicenseInterfaceFactory) return Boolean is
   begin
        return This.check;
   end isCheck;

   procedure getLicenseInstance (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant AbeLicenseInterface_Access := AbeLicenseInterfaceFactory'Class (This).getLicenseInstance (abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLicenseInstance;

   procedure get (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant AbeLicenseInterface_Access := AbeLicenseInterfaceFactory'Class (This).get (abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   SINGLETON := AbeLicenseInterfaceFactory_Package.Create;

end org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;


