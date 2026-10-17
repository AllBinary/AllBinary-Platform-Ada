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


package body org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; abeClientInformation : AbeClientInformationInterface_Access; node : Node_Access) is
   begin
      Initialize_Fields (This);
        This.init (abeClientInformation, node);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; node : Node_Access) return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      Initialize (This.all, abeClientInformation, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; abeClientInformation : AbeClientInformationInterface_Access; name : Unbounded_String; className : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.setClassName (className);
        This.init (abeClientInformation);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; name : Unbounded_String; className : Unbounded_String) return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      Initialize (This.all, abeClientInformation, name, className);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.setInputAutomationModuleInterface (inputAutomationModuleInterface);
        This.setClassName (To_Unbounded_String (Ada.Tags.Expanded_Name (This.inputAutomationModuleInterface.all'Tag)));
   end Initialize;

   function Create (inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access) return InputAutomationModuleConfiguration_Access is
      This : constant InputAutomationModuleConfiguration_Access := new InputAutomationModuleConfiguration;
   begin
      Initialize (This.all, inputAutomationModuleInterface);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation : AbeClientInformationInterface_Access; node : Node_Access) is
      nodeList : NodeList_Access;
      classNameNode : Node_Access;
   begin
        nodeList := node.getChildNodes;
        if (nodeList) /= (null) then
            classNameNode := DomSearchHelper_Package.getNode (DynamicObjectData_Package.NAME, nodeList);
            if (classNameNode) /= (null) then
                This.setClassName (DomNodeHelper_Package.getTextNodeValue (classNameNode));
                This.init (abeClientInformation);
            else
                This.logUtil.putF (To_Unbounded_String ("Class Node Null"), This'Unchecked_Access, This.commonStrings.INIT);
            end if;
        else
            This.logUtil.putF (Java_Image (InputAutomationData_Package.NAME) & To_Unbounded_String (" Node Has No Children"), This'Unchecked_Access, To_Unbounded_String ("Contructor"));
        end if;
   end init;

   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation : AbeClientInformationInterface_Access) is
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Name: ") & This.getName, This'Unchecked_Access, This.commonStrings.INIT);
            This.logUtil.putF (To_Unbounded_String ("ClassName: ") & This.className, This'Unchecked_Access, This.commonStrings.INIT);
            This.setInputAutomationModuleInterface (InputAutomationModuleFactoryInterface_Access (AbeFactory_Package.getInstance.getInstance.getInstance (abeClientInformation, This.getClassName)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end init;

   --  throws Exception
   function toDomNode (This : in out InputAutomationModuleConfiguration; document : Document_Access) return Node_Access is
      node : Node_Access;
      classNameNode : Node_Access;
   begin
        node := document.createElement (InputAutomationModuleData_Package.NAME);
        classNameNode := ModDomHelper_Package.createTextNode (document, DynamicObjectData_Package.NAME, This.getClassName);
        node.appendChild (classNameNode);
        return node;
   end toDomNode;

   function getName (This : in out InputAutomationModuleConfiguration) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out InputAutomationModuleConfiguration; name : Unbounded_String) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Name: ") & name, This'Unchecked_Access, To_Unbounded_String ("setName"));
        This.name := name;
   end setName;

   function getClassName (This : in out InputAutomationModuleConfiguration) return Unbounded_String is
   begin
        return This.className;
   end getClassName;

   procedure setClassName (This : in out InputAutomationModuleConfiguration; className : Unbounded_String) is
   begin
        This.logUtil.putF (To_Unbounded_String ("ClassName : ") & className, This'Unchecked_Access, To_Unbounded_String ("setClassName"));
        This.className := className;
   end setClassName;

   function getInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration) return InputAutomationModuleFactoryInterface_Access is
   begin
        return This.inputAutomationModuleInterface;
   end getInputAutomationModuleInterface;

   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration; inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("InputAutomationModuleFactoryInterface : ") & Java_Image (inputAutomationModuleInterface), This'Unchecked_Access, To_Unbounded_String ("setInputAutomationModuleInterface"));
        This.inputAutomationModuleInterface := inputAutomationModuleInterface;
        This.setName (This.inputAutomationModuleInterface.getName);
   end setInputAutomationModuleInterface;

   procedure toDomNode (This : in out InputAutomationModuleConfiguration; document : Document_Access) is
      Java_Result : constant Node_Access := InputAutomationModuleConfiguration'Class (This).toDomNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDomNode;

   procedure getName (This : in out InputAutomationModuleConfiguration) is
      Java_Result : constant Unbounded_String := InputAutomationModuleConfiguration'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getClassName (This : in out InputAutomationModuleConfiguration) is
      Java_Result : constant Unbounded_String := InputAutomationModuleConfiguration'Class (This).getClassName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClassName;

   procedure getInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration) is
      Java_Result : constant InputAutomationModuleFactoryInterface_Access := InputAutomationModuleConfiguration'Class (This).getInputAutomationModuleInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputAutomationModuleInterface;

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;


