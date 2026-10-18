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


with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.context.configuration.ContextConfiguration_Package; use org.allbinary.business.context.configuration.ContextConfiguration_Package;
with org.allbinary.business.context.configuration.ContextConfigurationData_Package; use org.allbinary.business.context.configuration.ContextConfigurationData_Package;

package body org.allbinary.business.context.configuration.ContextConfigurationView_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package EmailServerConfigurationData_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package EmailServerConfigurationView_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out ContextConfigurationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ContextConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      emailConfigurationNode : Node_Access;
      emailServerConfigurationView : EmailServerConfigurationView_Access;
   begin
      Initialize_Fields (This);
        childNodeList := node.getChildNodes;
        This.contextConfigurationInterface := ContextConfigurationInterface_Access (ContextConfiguration_Package.Create);
        emailConfigurationNode := DomSearchHelper_Package.getNode (EmailServerConfigurationData_Package.NAME, childNodeList);
        emailServerConfigurationView := EmailServerConfigurationView_Package.Create (emailConfigurationNode);
        This.contextConfigurationInterface.setEmailServerConfigurationInterface (EmailServerConfigurationInterface_Access (emailServerConfigurationView.getEmailConfigurationInterface));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return ContextConfigurationView_Access is
      This : constant ContextConfigurationView_Access := new ContextConfigurationView;
   begin
      ContextConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ContextConfigurationView'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) is
      contextConfigurationInterface : constant ContextConfigurationInterface_Access := ContextConfigurationInterface_Access (contextConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.contextConfigurationInterface := contextConfigurationInterface;
   end Initialize;

   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) return ContextConfigurationView_Access is
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
   function toXmlNode (This : in out ContextConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      emailServerConfigurationView : EmailServerConfigurationView_Access;
   begin
        node := document.createElement (ContextConfigurationData_Package.getInstance.NAME);
        emailServerConfigurationView := EmailServerConfigurationView_Package.Create (ContextConfigurationView'Class (This).getContextConfigurationInterface.getEmailServerConfigurationInterface);
        node.appendChild (emailServerConfigurationView.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out ContextConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ContextConfigurationView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.configuration.ContextConfigurationView_Package;


