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


package body org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package is

   procedure Initialize_Fields (This : in out XmlRpcRemoteLogClient'Class) is
   begin
      null;
      This.noCrypt := NoCrypt_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcRemoteLogClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      clientInfo : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (clientInfo_Param);
   begin
        XmlRpcAbeClient_Package.Initialize (This, clientInfo, To_Unbounded_String ("SSLLogServ.logUtil"));
        Initialize_Fields (This);
   end Initialize;

   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return XmlRpcRemoteLogClient_Access is
      This : constant XmlRpcRemoteLogClient_Access := new XmlRpcRemoteLogClient;
   begin
      XmlRpcRemoteLogClient_Package.Initialize (This.all, clientInfo_Param);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out XmlRpcRemoteLogClient; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      param : BasicArrayList_Access;
      serverUrl : Unbounded_String;
      index : Integer;
      xmlRpcClient : XmlRpcClient_Access;
      hashtable : ABHashtable_Access;
      result : Java_Object_Access;
   begin
        begin
            param := BasicArrayListD_Package.Create;
            serverUrl := This.getClientInfo.getLicenseServer (This.getServer);
            index := serverUrl.lastIndexOf (To_Unbounded_String ("/"));
            serverUrl := Unbounded_Slice (serverUrl, (0) + 1, (index) + (1)) & To_Unbounded_String ("logservssl.php");
            xmlRpcClient := XmlRpcClient_Package.Create (serverUrl);
            This.setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := ABHashtable_Access (anyType);
            param.add (hashtable);
            result := xmlRpcClient.execute (This.getRemoteMethod, param, This.noCrypt);
            Ada.Text_IO.Put_Line (Java_Image (Java_Image ((CommonLabels_Package.getInstance.RESULT_U) + (CommonSeps_Package.getInstance.NEW_LINE)) & result.toString));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("IOException Trying Other Servers")));
            if not (Java_Get_Message (e).startsWith (HOST_NOT_RESOLVED)) then
                return This.tryAnother (anyType);
            else
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcRemoteLogClient; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcRemoteLogClient'Class (This).get (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package;


