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


package body org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package is

   procedure Initialize_Fields (This : in out XmlRpcAbeClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.client := NullXmlRpcHandler_Package.NULL_XML_RPC_HANDLER;
      
      This.start := 0;
      This.maxServers := 0;
      
      This.START_SERVER := To_Unbounded_String ("Start With Server #");
      This.TRYING := To_Unbounded_String ("Trying Server #");
      This.SEP := CommonLabels_Package.getInstance.COLON_SEP;
      This.CLIENT_INFO := To_Unbounded_String ("Client Info: " & ASCII.LF & "");
      This.RESULT := (CommonLabels_Package.getInstance.RESULT_U) + (CommonSeps_Package.getInstance.NEW_LINE);
      This.INVALID := To_Unbounded_String ("License data is Invalid Trying Other Servers");
      This.EXCEPTION_IN_CLIENT := To_Unbounded_String ("Exception in client");
      This.SERVER_REPORTED_ERROR := To_Unbounded_String ("Server reported error");
      This.UNKNOWN_ERROR := To_Unbounded_String ("Unknown License Retrieval Failure");
      This.TRYING_OTHER_SERVERS := To_Unbounded_String ("IOException Trying Other Servers");
      This.HOST_NOT_RESOLVED_MSG := To_Unbounded_String ("Not Trying Again Since Host Unresolved");
      This.HOST_NOT_RESOLVED := To_Unbounded_String ("Host is unresolved");
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcAbeClient'Class; clientInfo_Param : access AbeClientInformationInterface'Class; remoteMethod : Unbounded_String) is
      clientInfo : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (clientInfo_Param);
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.remoteMethod := remoteMethod;
        This.clientInfo := clientInfo;
        if (clientInfo.getNumberOfLicenseServers) > (1) then
            This.maxServers := (clientInfo.getNumberOfLicenseServers) - (2);
            This.start := (This.myRandomFactory.getAbsoluteNextInt (This.maxServers)) + (1);
        elsif (clientInfo.getNumberOfLicenseServers) = (1) then
            This.maxServers := 0;
            This.start := 0;
        end if;
        This.isDone := False;
        This.server := This.start;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.START_SERVER);
        stringBuffer.appendint (This.getServer);
        stringBuffer.append (This.SEP);
        stringBuffer.append (clientInfo.getLicenseServer (This.getServer));
        This.logUtil.putF (stringBuffer.toString, XmlRpcAbeClient_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (clientInfo_Param : access AbeClientInformationInterface'Class; remoteMethod : Unbounded_String) return XmlRpcAbeClient_Access is
      This : constant XmlRpcAbeClient_Access := new XmlRpcAbeClient;
   begin
      XmlRpcAbeClient_Package.Initialize (This.all, clientInfo_Param, remoteMethod);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, XmlRpcAbeClient_Access'(This'Unchecked_Access));
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end get;

   --  throws Exception
   function tryAnother (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        if (This.getServer) < (This.getMaxServers) then
            This.setServer ((This.getServer) + (1));
        else
            This.setServer (0);
        end if;
        if ((This.getServer) /= (This.getStart)) and then (not (This.isIsDone)) then
            return This.get (anyType);
        else
            This.setIsDone (True);
        end if;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Tried All Servers But Still Failed")));
   end tryAnother;

   function getClientInfo (This : in out XmlRpcAbeClient) return AbeClientInformationInterface_Access is
   begin
        return This.clientInfo;
   end getClientInfo;

   function getClient (This : in out XmlRpcAbeClient) return XmlRpcHandler_Access is
   begin
        return This.client;
   end getClient;

   procedure setClient (This : in out XmlRpcAbeClient; client_Param : access XmlRpcClient'Class) is
      client : XmlRpcClient_Access := XmlRpcClient_Access (client_Param);
   begin
        This.client := client;
   end setClient;

   function getServer (This : in out XmlRpcAbeClient) return Integer is
   begin
        return This.server;
   end getServer;

   procedure setServer (This : in out XmlRpcAbeClient; server : Integer) is
   begin
        This.server := server;
   end setServer;

   function getStart (This : in out XmlRpcAbeClient) return Integer is
   begin
        return This.start;
   end getStart;

   procedure setStart (This : in out XmlRpcAbeClient; start : Integer) is
   begin
        This.start := start;
   end setStart;

   function getMaxServers (This : in out XmlRpcAbeClient) return Integer is
   begin
        return This.maxServers;
   end getMaxServers;

   procedure setMaxServers (This : in out XmlRpcAbeClient; maxServers : Integer) is
   begin
        This.maxServers := maxServers;
   end setMaxServers;

   function isIsDone (This : in out XmlRpcAbeClient) return Boolean is
   begin
        return This.isDone;
   end isIsDone;

   procedure setIsDone (This : in out XmlRpcAbeClient; isDone : Boolean) is
   begin
        This.isDone := isDone;
   end setIsDone;

   function getRemoteMethod (This : in out XmlRpcAbeClient) return Unbounded_String is
   begin
        return This.remoteMethod;
   end getRemoteMethod;

   procedure get (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcAbeClient'Class (This).get (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure tryAnother (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcAbeClient'Class (This).tryAnother (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end tryAnother;

begin
   null;
   isOnline := True;

end org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;


