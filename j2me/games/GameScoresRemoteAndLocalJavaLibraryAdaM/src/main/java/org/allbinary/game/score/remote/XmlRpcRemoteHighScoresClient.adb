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


package body org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package is

   procedure Initialize_Fields (This : in out XmlRpcRemoteHighScoresClient'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcRemoteHighScoresClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; page : Unbounded_String; remoteMethod : Unbounded_String) is
      clientInfo : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (clientInfo_Param);
   begin
        XmlRpcAbeClient_Package.Initialize (This, clientInfo, remoteMethod);
        Initialize_Fields (This);
        This.page := page;
        This.setServer (0);
   end Initialize;

   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; page : Unbounded_String; remoteMethod : Unbounded_String) return XmlRpcRemoteHighScoresClient_Access is
      This : constant XmlRpcRemoteHighScoresClient_Access := new XmlRpcRemoteHighScoresClient;
   begin
      XmlRpcRemoteHighScoresClient_Package.Initialize (This.all, clientInfo_Param, page, remoteMethod);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcRemoteHighScoresClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      cryptInterface : constant CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
      param : BasicArrayList_Access;
      serverUrl : Unbounded_String;
      index : Integer;
      stringBuffer : StringMaker_Access;
      xmlRpcClient : XmlRpcClient_Access;
      hashtable : ABHashtable_Access;
      result : Java_Object_Access;
   begin
        begin
            param := BasicArrayListD_Package.Create;
            serverUrl := This.getClientInfo.getLicenseServer (This.getServer);
            index := serverUrl.lastIndexOf ('/');
            serverUrl := Unbounded_Slice (serverUrl, (0) + 1, (index) + (1)) & This.page;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (TRYING);
            stringBuffer.appendint (Integer (This.getServer));
            stringBuffer.append (SEP_Package);
            stringBuffer.append (serverUrl);
            This.logUtil.putF (stringBuffer.toString, XmlRpcRemoteHighScoresClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            xmlRpcClient := XmlRpcClient_Package.Create (serverUrl);
            This.setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := ABHashtable_Access (anyType);
            This.logUtil.putF (Java_Image (CLIENT_INFO) & hashtable.toString, XmlRpcRemoteHighScoresClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            param.add (hashtable);
            result := xmlRpcClient.execute (This.getRemoteMethod, param, cryptInterface);
            This.logUtil.putF (Java_Image (RESULT) & result.toString, XmlRpcRemoteHighScoresClient_Access'(This'Unchecked_Access), This.commonStrings.GET);
            This.isOnline := True;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put ((TRYING_OTHER_SERVERS) + (ExceptionUtil_Package.getInstance.getStackTrace (e)), XmlRpcRemoteHighScoresClient_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            if not (Java_Get_Message (e).startsWith (HOST_NOT_RESOLVED)) then
                return This.tryAnother (anyType);
            else
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcRemoteHighScoresClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcRemoteHighScoresClient'Class (This).get (anyType_Param, cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package;


