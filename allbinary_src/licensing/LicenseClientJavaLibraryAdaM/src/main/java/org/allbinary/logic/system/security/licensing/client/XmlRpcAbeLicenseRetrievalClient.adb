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


package body org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package is

   procedure Initialize_Fields (This : in out XmlRpcAbeLicenseRetrievalClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcAbeLicenseRetrievalClient'Class; clientInfo : AbeClientInformationInterface_Access) is
   begin
        XmlRpcAbeClient_Package.Initialize (This, clientInfo, To_Unbounded_String ("LicServ.getLicense"));
        Initialize_Fields (This);
   end Initialize;

   function Create (clientInfo : AbeClientInformationInterface_Access) return XmlRpcAbeLicenseRetrievalClient_Access is
      This : constant XmlRpcAbeLicenseRetrievalClient_Access := new XmlRpcAbeLicenseRetrievalClient;
   begin
      Initialize (This.all, clientInfo);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcAbeLicenseRetrievalClient; anyType : Java_Object_Access; cryptInterface : CryptInterface_Access) return Java_Object_Access is
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
            server := This.getClientInfo.getLicenseServer (This.getServer);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (TRYING);
            stringBuffer.appendint (Integer (This.getServer));
            stringBuffer.append (SEP_Package);
            stringBuffer.append (server);
            This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START_LABEL) & stringBuffer.toString, This'Unchecked_Access, This.commonStrings.GET);
            param := BasicArrayListD_Package.Create;
            xmlRpcClient := XmlRpcClient_Package.Create (server);
            This.setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := This.getClientInfo.toHashtable;
            This.logUtil.putF (Java_Image (CLIENT_INFO) & hashtable.toString, This'Unchecked_Access, This.commonStrings.GET);
            param.add (hashtable);
            result := xmlRpcClient.execute (This.getRemoteMethod, param, cryptInterface);
            This.logUtil.putF (Java_Image (RESULT) & result.toString, This'Unchecked_Access, This.commonStrings.GET);
            resultHashtable := ABHashtable_Access (result);
            if not (AbeClientLicense_Package.hasRequiredKeys (resultHashtable)) then
                This.logUtil.putF (INVALID, This'Unchecked_Access, This.commonStrings.GET);
                return This.tryAnother (anyType);
            end if;
            abeLicenseInterface := AbeClientLicense_Package.Create (resultHashtable);
            This.logUtil.putF (Java_Image (This.commonStrings.END_Id) & stringBuffer.toString, This'Unchecked_Access, This.commonStrings.GET);
            This.isOnline := True;
            return abeLicenseInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (EXCEPTION_IN_CLIENT, This'Unchecked_Access, This.commonStrings.GET, e);
            This.logUtil.putF ((TRYING_OTHER_SERVERS) + (ExceptionUtil_Package.getInstance.getStackTrace (e)), This'Unchecked_Access, This.commonStrings.GET);
            if not (Java_Get_Message (e).startsWith (HOST_NOT_RESOLVED)) then
                return This.tryAnother (anyType);
            else
                This.isOnline := False;
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcAbeLicenseRetrievalClient; anyType : Java_Object_Access; cryptInterface : CryptInterface_Access) is
      Java_Result : constant Java_Object_Access := XmlRpcAbeLicenseRetrievalClient'Class (This).get (anyType, cryptInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;


