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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientLicense_Package; use org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.apache.xmlrpc.XmlRpcClient_Package; use org.apache.xmlrpc.XmlRpcClient_Package;
with org.apache.xmlrpc.XmlRpcException_Package; use org.apache.xmlrpc.XmlRpcException_Package;

package body org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ExceptionUtil_Package renames Standard.org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientLicense_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;
   package AbeLicenseInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package XmlRpcClient_Package renames Standard.org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcException_Package renames Standard.org.apache.xmlrpc.XmlRpcException_Package;
   procedure Initialize_Fields (This : in out XmlRpcAbeLicenseRetrievalClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcAbeLicenseRetrievalClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      clientInfo : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (clientInfo_Param);
   begin
        XmlRpcAbeClient_Package.Initialize (This, clientInfo, To_Unbounded_String ("LicServ.getLicense"));
        Initialize_Fields (This);
   end Initialize;

   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return XmlRpcAbeLicenseRetrievalClient_Access is
      This : constant XmlRpcAbeLicenseRetrievalClient_Access := new XmlRpcAbeLicenseRetrievalClient;
   begin
      XmlRpcAbeLicenseRetrievalClient_Package.Initialize (This.all, clientInfo_Param);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcAbeLicenseRetrievalClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      cryptInterface : constant CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
      server : Unbounded_String;
      stringBuffer : StringMaker_Access;
      param : BasicArrayList_Access;
      xmlRpcClient : XmlRpcClient_Access;
      hashtable : ABHashtable_Access;
      result : Java_Object_Access;
      resultHashtable : ABHashtable_Access;
      abeLicenseInterface : AbeLicenseInterface_Access;
   begin
        begin
            server := XmlRpcAbeLicenseRetrievalClient'Class (This).getClientInfo.getLicenseServer (XmlRpcAbeLicenseRetrievalClient'Class (This).getServer);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (TRYING);
            stringBuffer.appendint (Integer (XmlRpcAbeLicenseRetrievalClient'Class (This).getServer));
            stringBuffer.append (SEP_Package);
            stringBuffer.append (server);
            This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START_LABEL) & stringBuffer.toString, XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param := BasicArrayList_Access (BasicArrayListD_Package.Create);
            xmlRpcClient := XmlRpcClient_Package.Create (server);
            XmlRpcAbeLicenseRetrievalClient'Class (This).setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := XmlRpcAbeLicenseRetrievalClient'Class (This).getClientInfo.toHashtable;
            This.logUtil.putF (Java_Image (CLIENT_INFO) & hashtable.toString, XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param.add (Java_Object_Access (hashtable));
            result := xmlRpcClient.execute (XmlRpcAbeLicenseRetrievalClient'Class (This).getRemoteMethod, param, cryptInterface);
            This.logUtil.putF (Java_Image (RESULT) & result.toString, XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            resultHashtable := ABHashtable_Access (result);
            if not (AbeClientLicense_Package.hasRequiredKeys (resultHashtable)) then
                This.logUtil.putF (INVALID, XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
                return XmlRpcAbeLicenseRetrievalClient'Class (This).tryAnother (anyType);
            end if;
            abeLicenseInterface := AbeLicenseInterface_Access (AbeClientLicense_Package.Create (resultHashtable));
            This.logUtil.putF (Java_Image (This.commonStrings.END_Id) & stringBuffer.toString, XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            This.isOnline := True;
            return Java_Object_Access (abeLicenseInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (EXCEPTION_IN_CLIENT, XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            This.logUtil.putF ((TRYING_OTHER_SERVERS) + (ExceptionUtil_Package.getInstance.getStackTrace (e)), XmlRpcAbeLicenseRetrievalClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            if not (Java_Starts_With (Java_Get_Message (e), HOST_NOT_RESOLVED)) then
                return XmlRpcAbeLicenseRetrievalClient'Class (This).tryAnother (anyType);
            else
                This.isOnline := False;
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcAbeLicenseRetrievalClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcAbeLicenseRetrievalClient'Class (This).get (anyType_Param => anyType_Param, cryptInterface_Param => cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;


