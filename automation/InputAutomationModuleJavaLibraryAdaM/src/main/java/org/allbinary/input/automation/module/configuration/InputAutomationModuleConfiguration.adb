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


with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.automation.InputAutomationData_Package; use org.allbinary.input.automation.InputAutomationData_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package InputAutomationData_Package renames Standard.org.allbinary.input.automation.InputAutomationData_Package;
   package InputAutomationModuleData_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out InputAutomationModuleConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.className := Null_Unbounded_String;
      This.name := Null_Unbounded_String;
      This.inputAutomationModuleInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      InputAutomationModuleConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; node_Param : access Node_Package.Node'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        InputAutomationModuleConfiguration'Class (This).init (abeClientInformation, node);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; node_Param : access Node_Package.Node'Class) return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      InputAutomationModuleConfiguration_Package.Initialize (This.all, abeClientInformation_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; className : Unbounded_String) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
      Initialize_Fields (This);
        InputAutomationModuleConfiguration'Class (This).setName (name);
        InputAutomationModuleConfiguration'Class (This).setClassName (className);
        InputAutomationModuleConfiguration'Class (This).init (abeClientInformation);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; className : Unbounded_String) return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      InputAutomationModuleConfiguration_Package.Initialize (This.all, abeClientInformation_Param, name, className);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) is
      inputAutomationModuleInterface : constant InputAutomationModuleFactoryInterface_Access := InputAutomationModuleFactoryInterface_Access (inputAutomationModuleInterface_Param);
   begin
      Initialize_Fields (This);
        InputAutomationModuleConfiguration'Class (This).setInputAutomationModuleInterface (inputAutomationModuleInterface);
        InputAutomationModuleConfiguration'Class (This).setClassName (To_Unbounded_String (Ada.Tags.Expanded_Name (This.inputAutomationModuleInterface.all'Tag)));
   end Initialize;

   function Create (inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      InputAutomationModuleConfiguration_Package.Initialize (This.all, inputAutomationModuleInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; node_Param : access Node_Package.Node'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      node : constant Node_Access := Node_Access (node_Param);
      nodeList : NodeList_Access;
      classNameNode : Node_Access;
   begin
        nodeList := node.getChildNodes;
        if (nodeList) /= (null) then
            classNameNode := DomSearchHelper_Package.getNode (DynamicObjectData_Package.NAME, nodeList);
            if (classNameNode) /= (null) then
                InputAutomationModuleConfiguration'Class (This).setClassName (DomNodeHelper_Package.getTextNodeValue (classNameNode));
                InputAutomationModuleConfiguration'Class (This).init (abeClientInformation);
            else
                This.logUtil.putF (To_Unbounded_String ("Class Node Null"), InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            end if;
        else
            This.logUtil.putF (Java_Image (InputAutomationData_Package.NAME) & To_Unbounded_String (" Node Has No Children"), InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        end if;
   end init;

   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Name: ") & InputAutomationModuleConfiguration'Class (This).getName, InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            This.logUtil.putF (To_Unbounded_String ("ClassName: ") & This.className, InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            InputAutomationModuleConfiguration'Class (This).setInputAutomationModuleInterface (InputAutomationModuleFactoryInterface_Access (AbeFactory_Package.getInstance.getInstance.getInstance (abeClientInformation, InputAutomationModuleConfiguration'Class (This).getClassName)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end init;

   --  throws Exception
   function toDomNode (This : in out InputAutomationModuleConfiguration; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      classNameNode : Node_Access;
   begin
        node := document.createElement (InputAutomationModuleData_Package.NAME);
        classNameNode := ModDomHelper_Package.createTextNode (document, DynamicObjectData_Package.NAME, InputAutomationModuleConfiguration'Class (This).getClassName);
        node.appendChild (classNameNode);
        return node;
   end toDomNode;

   function getName (This : in out InputAutomationModuleConfiguration) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out InputAutomationModuleConfiguration; name : Unbounded_String) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Name: ") & name, InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("setName"));
        This.name := name;
   end setName;

   function getClassName (This : in out InputAutomationModuleConfiguration) return Unbounded_String is
   begin
        return This.className;
   end getClassName;

   procedure setClassName (This : in out InputAutomationModuleConfiguration; className : Unbounded_String) is
   begin
        This.logUtil.putF (To_Unbounded_String ("ClassName : ") & className, InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("setClassName"));
        This.className := className;
   end setClassName;

   function getInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration) return InputAutomationModuleFactoryInterface_Access is
   begin
        return This.inputAutomationModuleInterface;
   end getInputAutomationModuleInterface;

   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration; inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) is
      inputAutomationModuleInterface : constant InputAutomationModuleFactoryInterface_Access := InputAutomationModuleFactoryInterface_Access (inputAutomationModuleInterface_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("InputAutomationModuleFactoryInterface : ") & Java_Image (inputAutomationModuleInterface), InputAutomationModuleConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("setInputAutomationModuleInterface"));
        This.inputAutomationModuleInterface := inputAutomationModuleInterface;
        InputAutomationModuleConfiguration'Class (This).setName (This.inputAutomationModuleInterface.getName);
   end setInputAutomationModuleInterface;

   procedure toDomNode (This : in out InputAutomationModuleConfiguration; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := InputAutomationModuleConfiguration'Class (This).toDomNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDomNode;

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;


