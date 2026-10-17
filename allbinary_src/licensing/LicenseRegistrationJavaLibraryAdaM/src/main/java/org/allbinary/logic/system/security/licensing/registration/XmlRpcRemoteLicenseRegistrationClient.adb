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


package body org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package is

   procedure Initialize_Fields (This : in out XmlRpcRemoteLicenseRegistrationClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.PAGE := To_Unbounded_String ("licenseregistrationserverssl.php");
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcRemoteLicenseRegistrationClient'Class; clientInfo_Param : access AbeClientInformationInterface'Class) is
      clientInfo : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (clientInfo_Param);
   begin
        XmlRpcAbeClient_Package.Initialize (This, clientInfo, To_Unbounded_String ("LicenseRegistrationServer.process"));
        Initialize_Fields (This);
        This.setServer (0);
   end Initialize;

   function Create (clientInfo_Param : access AbeClientInformationInterface'Class) return XmlRpcRemoteLicenseRegistrationClient_Access is
      This : constant XmlRpcRemoteLicenseRegistrationClient_Access := new XmlRpcRemoteLicenseRegistrationClient;
   begin
      XmlRpcRemoteLicenseRegistrationClient_Package.Initialize (This.all, clientInfo_Param);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface'Class) return Java_Object_Access is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      cryptInterface : CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
      server : Unbounded_String;
      stringBuffer : StringMaker_Access;
      param : BasicArrayList_Access;
      serverUrl : Unbounded_String;
      index : Integer;
      xmlRpcClient : XmlRpcClient_Access;
      hashtable : ABHashtable_Access;
      result : Java_Object_Access;
   begin
        begin
            server := This.getClientInfo.getLicenseServer (This.getServer);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (TRYING);
            stringBuffer.appendint (Integer (This.getServer));
            stringBuffer.append (SEP_Package);
            stringBuffer.append (server);
            This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START_LABEL) & stringBuffer.toString, XmlRpcRemoteLicenseRegistrationClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param := BasicArrayListD_Package.Create;
            serverUrl := This.getClientInfo.getLicenseServer (This.getServer);
            index := serverUrl.lastIndexOf (To_Unbounded_String ("/"));
            serverUrl := Unbounded_Slice (serverUrl, (0) + 1, (index) + (1)) & This.PAGE;
            xmlRpcClient := XmlRpcClient_Package.Create (serverUrl);
            This.setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := ABHashtable_Access (anyType);
            This.logUtil.putF (Java_Image (CLIENT_INFO) & hashtable.toString, XmlRpcRemoteLicenseRegistrationClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param.add (hashtable);
            result := xmlRpcClient.execute (This.getRemoteMethod, param, cryptInterface);
            This.logUtil.putF (Java_Image (RESULT) & result.toString, XmlRpcRemoteLicenseRegistrationClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            This.isOnline := True;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF ((TRYING_OTHER_SERVERS) + (ExceptionUtil_Package.getInstance.getStackTrace (e)), XmlRpcRemoteLicenseRegistrationClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            if not (Java_Get_Message (e).startsWith (HOST_NOT_RESOLVED)) then
                return This.tryAnother (anyType);
            else
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcRemoteLicenseRegistrationClient'Class (This).get (anyType_Param, cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;


