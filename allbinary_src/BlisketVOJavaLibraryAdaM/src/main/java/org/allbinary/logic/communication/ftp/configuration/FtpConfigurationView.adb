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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;

package body org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out FtpConfigurationView'Class) is
   begin
      null;
      This.ftpConfigurationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out FtpConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      chileNodeList : NodeList_Access;
      server : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      path : Unbounded_String;
   begin
      Initialize_Fields (This);
        FtpConfigurationView'Class (This).setFtpConfigurationInterface (FtpConfigurationInterface_Access (FtpConfiguration_Package.Create));
        chileNodeList := node.getChildNodes;
        server := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.SERVER, chileNodeList);
        FtpConfigurationView'Class (This).getFtpConfigurationInterface.setServer (server);
        userName := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.USERNAME, chileNodeList);
        FtpConfigurationView'Class (This).getFtpConfigurationInterface.setUserName (userName);
        password := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.PASSWORD, chileNodeList);
        FtpConfigurationView'Class (This).getFtpConfigurationInterface.setPassword (password);
        path := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.PATH, chileNodeList);
        FtpConfigurationView'Class (This).getFtpConfigurationInterface.setPath (path);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return FtpConfigurationView_Access is
      This : constant FtpConfigurationView_Access := new FtpConfigurationView;
   begin
      FtpConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out FtpConfigurationView'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) is
      ftpConfigurationInterface : constant FtpConfigurationInterface_Access := FtpConfigurationInterface_Access (ftpConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        FtpConfigurationView'Class (This).setFtpConfigurationInterface (ftpConfigurationInterface);
   end Initialize;

   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) return FtpConfigurationView_Access is
      This : constant FtpConfigurationView_Access := new FtpConfigurationView;
   begin
      FtpConfigurationView_Package.Initialize (This.all, ftpConfigurationInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out FtpConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      ftpConfigurationMapping : FtpConfigurationMapping_Access;
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        ftpConfigurationMapping := FtpConfigurationMapping_Package.Create (FtpConfigurationView'Class (This).getFtpConfigurationInterface);
        hashMap := ftpConfigurationMapping.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, FtpConfigurationData_Package.NAME, hashMap);
        return node;
   end toXmlNode;

   function getFtpConfigurationInterface (This : in out FtpConfigurationView) return FtpConfigurationInterface_Access is
   begin
        return This.ftpConfigurationInterface;
   end getFtpConfigurationInterface;

   procedure setFtpConfigurationInterface (This : in out FtpConfigurationView; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) is
      ftpConfigurationInterface : constant FtpConfigurationInterface_Access := FtpConfigurationInterface_Access (ftpConfigurationInterface_Param);
   begin
        This.ftpConfigurationInterface := ftpConfigurationInterface;
   end setFtpConfigurationInterface;

   procedure toXmlNode (This : in out FtpConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := FtpConfigurationView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package;


