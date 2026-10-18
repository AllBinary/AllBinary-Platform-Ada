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


with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package; use org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;

package body org.allbinary.logic.system.security.licensing.client.AbeLicenseClient_Package is

   package LicenseInitInfo_Package renames Standard.org.allbinary.business.init.LicenseInitInfo_Package;
   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package XmlRpcAbeClient_Package renames Standard.org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out AbeLicenseClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.MINSERVERS := 3;
   end Initialize_Fields;


   procedure Initialize (This : in out AbeLicenseClient'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbeLicenseClient_Access is
      This : constant AbeLicenseClient_Access := new AbeLicenseClient;
   begin
      AbeLicenseClient_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out AbeLicenseClient; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return AbeLicenseInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      xmlRpcAbeLicenseClient : XmlRpcAbeClient_Access;
      abeLicenseInterface : AbeLicenseInterface_Access;
      licenseId : Unbounded_String;
      servers : BasicArrayList_Access;
      isNewLicenseId : Boolean;
      isBetterServerList : Boolean;
      stringValidationUtil : StringValidationUtil_Access;
      initInfo : LicenseInitInfo_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AbeLicenseClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            xmlRpcAbeLicenseClient := XmlRpcAbeClient_Access (XmlRpcAbeLicenseRetrievalClient_Package.Create (abeClientInformation));
            abeLicenseInterface := AbeLicenseInterface_Access (xmlRpcAbeLicenseClient.get (null));
            licenseId := abeLicenseInterface.getLicenseId;
            servers := abeLicenseInterface.getServers;
            isNewLicenseId := False;
            isBetterServerList := False;
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if (stringValidationUtil.isEmpty (abeClientInformation.getLicenseId)) and then (not (abeClientInformation.isSameId (licenseId))) then
                isNewLicenseId := True;
            end if;
            if ((servers.size) >= (This.MINSERVERS)) and then (abeClientInformation.isLargerOrDifferentServerList (servers)) then
                isBetterServerList := True;
            end if;
            if (isBetterServerList) or else (isNewLicenseId) then
                initInfo := LicenseInitInfoUtil_Package.getInstance.read;
                initInfo.setLicenseId (licenseId);
                initInfo.setServerList (servers);
                LicenseInitInfoUtil_Package.getInstance.write (initInfo);
                abeClientInformation.init;
            end if;
            This.logUtil.putF (This.commonStrings.END_Id, AbeLicenseClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            return abeLicenseInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end get;

   procedure get (This : in out AbeLicenseClient; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant AbeLicenseInterface_Access := AbeLicenseClient'Class (This).get (abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.system.security.licensing.client.AbeLicenseClient_Package;


