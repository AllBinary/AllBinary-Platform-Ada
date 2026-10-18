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


with org.apache.xmlrpc.XmlRpcClient_Package; use org.apache.xmlrpc.XmlRpcClient_Package;
with org.apache.xmlrpc.XmlRpcException_Package; use org.apache.xmlrpc.XmlRpcException_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package body org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package is

   package XmlRpcClient_Package renames Standard.org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcException_Package renames Standard.org.apache.xmlrpc.XmlRpcException_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ExceptionUtil_Package renames Standard.org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   procedure Initialize_Fields (This : in out XmlRpcRemoteLicenseRegistrationClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.PAGE := To_Unbounded_String ("licenseregistrationserverssl.php");
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcRemoteLicenseRegistrationClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      clientInfo : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (clientInfo_Param);
   begin
        XmlRpcAbeClient_Package.Initialize (This, clientInfo, To_Unbounded_String ("LicenseRegistrationServer.process"));
        Initialize_Fields (This);
        XmlRpcRemoteLicenseRegistrationClient'Class (This).setServer (0);
   end Initialize;

   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return XmlRpcRemoteLicenseRegistrationClient_Access is
      This : constant XmlRpcRemoteLicenseRegistrationClient_Access := new XmlRpcRemoteLicenseRegistrationClient;
   begin
      XmlRpcRemoteLicenseRegistrationClient_Package.Initialize (This.all, clientInfo_Param);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      cryptInterface : constant CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
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
            server := XmlRpcRemoteLicenseRegistrationClient'Class (This).getClientInfo.getLicenseServer (XmlRpcRemoteLicenseRegistrationClient'Class (This).getServer);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (TRYING);
            stringBuffer.appendint (Integer (XmlRpcRemoteLicenseRegistrationClient'Class (This).getServer));
            stringBuffer.append (SEP_Package);
            stringBuffer.append (server);
            This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START_LABEL) & stringBuffer.toString, XmlRpcRemoteLicenseRegistrationClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param := BasicArrayList_Access (BasicArrayListD_Package.Create);
            serverUrl := XmlRpcRemoteLicenseRegistrationClient'Class (This).getClientInfo.getLicenseServer (XmlRpcRemoteLicenseRegistrationClient'Class (This).getServer);
            index := Java_Last_Index_Of (serverUrl, Java_Image (To_Unbounded_String ("/")));
            serverUrl := Unbounded_Slice (serverUrl, (0) + 1, (index) + (1)) & This.PAGE;
            xmlRpcClient := XmlRpcClient_Package.Create (serverUrl);
            XmlRpcRemoteLicenseRegistrationClient'Class (This).setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := ABHashtable_Access (anyType);
            This.logUtil.putF (Java_Image (CLIENT_INFO) & hashtable.toString, XmlRpcRemoteLicenseRegistrationClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param.add (Java_Object_Access (hashtable));
            result := xmlRpcClient.execute (XmlRpcRemoteLicenseRegistrationClient'Class (This).getRemoteMethod, param, cryptInterface);
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
                return XmlRpcRemoteLicenseRegistrationClient'Class (This).tryAnother (anyType);
            else
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcRemoteLicenseRegistrationClient'Class (This).get (anyType_Param, cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;


