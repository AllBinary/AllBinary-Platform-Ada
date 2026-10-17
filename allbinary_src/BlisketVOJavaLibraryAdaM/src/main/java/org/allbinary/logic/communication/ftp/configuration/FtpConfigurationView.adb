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


package body org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package is

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
        This.setFtpConfigurationInterface (FtpConfigurationInterface_Access (FtpConfiguration_Package.Create));
        chileNodeList := node.getChildNodes;
        server := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.SERVER, chileNodeList);
        This.getFtpConfigurationInterface.setServer (server);
        userName := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.USERNAME, chileNodeList);
        This.getFtpConfigurationInterface.setUserName (userName);
        password := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.PASSWORD, chileNodeList);
        This.getFtpConfigurationInterface.setPassword (password);
        path := DomNodeHelper_Package.getTextNodeValue (FtpConfigurationData_Package.PATH, chileNodeList);
        This.getFtpConfigurationInterface.setPath (path);
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
        This.setFtpConfigurationInterface (ftpConfigurationInterface);
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
        ftpConfigurationMapping := FtpConfigurationMapping_Package.Create (This.getFtpConfigurationInterface);
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
      Java_Result : constant Node_Access := FtpConfigurationView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package;


