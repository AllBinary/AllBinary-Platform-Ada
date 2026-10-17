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


package body org.allbinary.business.context.configuration.ContextConfigurationView_Package is

   procedure Initialize_Fields (This : in out ContextConfigurationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ContextConfigurationView'Class; node_Param : access Node'Class) is
      node : Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      emailConfigurationNode : Node_Access;
      emailServerConfigurationView : EmailServerConfigurationView_Access;
   begin
      Initialize_Fields (This);
        childNodeList := node.getChildNodes;
        This.contextConfigurationInterface := ContextConfiguration_Package.Create;
        emailConfigurationNode := DomSearchHelper_Package.getNode (EmailServerConfigurationData_Package.NAME, childNodeList);
        emailServerConfigurationView := EmailServerConfigurationView_Package.Create (emailConfigurationNode);
        This.contextConfigurationInterface.setEmailServerConfigurationInterface (EmailServerConfigurationInterface_Access (emailServerConfigurationView.getEmailConfigurationInterface));
   end Initialize;

   function Create (node_Param : access Node'Class) return ContextConfigurationView_Access is
      This : constant ContextConfigurationView_Access := new ContextConfigurationView;
   begin
      ContextConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ContextConfigurationView'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface'Class) is
      contextConfigurationInterface : ContextConfigurationInterface_Access := ContextConfigurationInterface_Access (contextConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.contextConfigurationInterface := contextConfigurationInterface;
   end Initialize;

   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface'Class) return ContextConfigurationView_Access is
      This : constant ContextConfigurationView_Access := new ContextConfigurationView;
   begin
      ContextConfigurationView_Package.Initialize (This.all, contextConfigurationInterface_Param);
      return This;
   end Create;

   function getContextConfigurationInterface (This : in out ContextConfigurationView) return ContextConfigurationInterface_Access is
   begin
        return This.contextConfigurationInterface;
   end getContextConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out ContextConfigurationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      node : Node_Access;
      emailServerConfigurationView : EmailServerConfigurationView_Access;
   begin
        node := document.createElement (ContextConfigurationData_Package.getInstance.NAME);
        emailServerConfigurationView := EmailServerConfigurationView_Package.Create (This.getContextConfigurationInterface.getEmailServerConfigurationInterface);
        node.appendChild (emailServerConfigurationView.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out ContextConfigurationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := ContextConfigurationView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.configuration.ContextConfigurationView_Package;


