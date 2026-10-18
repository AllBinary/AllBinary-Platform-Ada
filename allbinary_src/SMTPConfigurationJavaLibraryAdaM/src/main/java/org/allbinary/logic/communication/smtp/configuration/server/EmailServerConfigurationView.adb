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
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package;

package body org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out EmailServerConfigurationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EmailServerConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      server : Unbounded_String;
      accountName : Unbounded_String;
      password : Unbounded_String;
   begin
      Initialize_Fields (This);
        childNodeList := node.getChildNodes;
        server := DomNodeHelper_Package.getTextNodeValue (EmailServerConfigurationData_Package.SERVER, childNodeList);
        accountName := DomNodeHelper_Package.getTextNodeValue (EmailServerConfigurationData_Package.ACCOUNT, childNodeList);
        password := DomNodeHelper_Package.getTextNodeValue (EmailServerConfigurationData_Package.PASSWORD, childNodeList);
        This.emailServerConfigurationInterface := EmailServerConfigurationInterface_Access (EmailServerConfiguration_Package.Create (accountName, password, server));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return EmailServerConfigurationView_Access is
      This : constant EmailServerConfigurationView_Access := new EmailServerConfigurationView;
   begin
      EmailServerConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out EmailServerConfigurationView'Class; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) is
      emailServerConfigurationInterface : constant EmailServerConfigurationInterface_Access := EmailServerConfigurationInterface_Access (emailServerConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end Initialize;

   function Create (emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) return EmailServerConfigurationView_Access is
      This : constant EmailServerConfigurationView_Access := new EmailServerConfigurationView;
   begin
      EmailServerConfigurationView_Package.Initialize (This.all, emailServerConfigurationInterface_Param);
      return This;
   end Create;

   function getEmailConfigurationInterface (This : in out EmailServerConfigurationView) return EmailServerConfigurationInterface_Access is
   begin
        return This.emailServerConfigurationInterface;
   end getEmailConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out EmailServerConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      emailConfigurationMapping : EmailServerConfigurationMapping_Access;
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        emailConfigurationMapping := EmailServerConfigurationMapping_Package.Create (This.emailServerConfigurationInterface);
        hashMap := emailConfigurationMapping.toHashMap;
        node := ModDomHelper_Package.createNodeWithValueNodes (document, EmailServerConfigurationData_Package.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out EmailServerConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EmailServerConfigurationView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;


