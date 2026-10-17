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


package body org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package is

   procedure Initialize_Fields (This : in out EmailServerConfigurationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EmailServerConfigurationView'Class; node : Node_Access) is
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

   function Create (node : Node_Access) return EmailServerConfigurationView_Access is
      This : constant EmailServerConfigurationView_Access := new EmailServerConfigurationView;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out EmailServerConfigurationView'Class; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end Initialize;

   function Create (emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) return EmailServerConfigurationView_Access is
      This : constant EmailServerConfigurationView_Access := new EmailServerConfigurationView;
   begin
      Initialize (This.all, emailServerConfigurationInterface);
      return This;
   end Create;

   function getEmailConfigurationInterface (This : in out EmailServerConfigurationView) return EmailServerConfigurationInterface_Access is
   begin
        return This.emailServerConfigurationInterface;
   end getEmailConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out EmailServerConfigurationView; document : Document_Access) return Node_Access is
      emailConfigurationMapping : EmailServerConfigurationMapping_Access;
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        emailConfigurationMapping := EmailServerConfigurationMapping_Package.Create (This.emailServerConfigurationInterface);
        hashMap := emailConfigurationMapping.toHashMap;
        node := ModDomHelper_Package.createNodeWithValueNodes (document, EmailServerConfigurationData_Package.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure getEmailConfigurationInterface (This : in out EmailServerConfigurationView) is
      Java_Result : constant EmailServerConfigurationInterface_Access := EmailServerConfigurationView'Class (This).getEmailConfigurationInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEmailConfigurationInterface;

   procedure toXmlNode (This : in out EmailServerConfigurationView; document : Document_Access) is
      Java_Result : constant Node_Access := EmailServerConfigurationView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;


