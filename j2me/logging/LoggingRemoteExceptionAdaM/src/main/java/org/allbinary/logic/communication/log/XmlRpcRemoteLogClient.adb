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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package body org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package is

   package XmlRpcClient_Package renames Standard.org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcException_Package renames Standard.org.apache.xmlrpc.XmlRpcException_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
            param := BasicArrayList_Access (BasicArrayListD_Package.Create);
            serverUrl := XmlRpcRemoteLogClient'Class (This).getClientInfo.getLicenseServer (XmlRpcRemoteLogClient'Class (This).getServer);
            index := Java_Last_Index_Of (serverUrl, Java_Image (To_Unbounded_String ("/")));
            serverUrl := Unbounded_Slice (serverUrl, (0) + 1, (index) + (1)) & To_Unbounded_String ("logservssl.php");
            xmlRpcClient := XmlRpcClient_Package.Create (serverUrl);
            XmlRpcRemoteLogClient'Class (This).setClient (xmlRpcClient);
            xmlRpcClient.setBasicAuthentication (null, null);
            hashtable := ABHashtable_Access (anyType);
            param.add (Java_Object_Access (hashtable));
            result := xmlRpcClient.execute (XmlRpcRemoteLogClient'Class (This).getRemoteMethod, param, This.noCrypt);
            Ada.Text_IO.Put_Line (Java_Image (Java_Image ((CommonLabels_Package.getInstance.RESULT_U) + (CommonSeps_Package.getInstance.NEW_LINE)) & result.toString));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("IOException Trying Other Servers")));
            if not (Java_Starts_With (Java_Get_Message (e), HOST_NOT_RESOLVED)) then
                return XmlRpcRemoteLogClient'Class (This).tryAnother (anyType);
            else
                Java_Throw (Java_New_Exception ("Exception", HOST_NOT_RESOLVED_MSG));
            end if;
                end;
        end;
   end get;

   procedure get (This : in out XmlRpcRemoteLogClient; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcRemoteLogClient'Class (This).get (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   function get (This : in out XmlRpcRemoteLogClient; Value : Unbounded_String) return Java_Object_Access is
   begin
      return XmlRpcRemoteLogClient'Class (This).get (Java_Box (Value));
   end get;

   procedure get (This : in out XmlRpcRemoteLogClient; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := XmlRpcRemoteLogClient'Class (This).get (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package;


