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


package body org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package is

   procedure Initialize_Fields (This : in out AbstractInputAutomationFactory'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel : JPanel_Access; helpSet : HelpSet_Access) is
   begin
      InputAutomationModuleFactoryInterface_Package.Initialize (This);
      Initialize_Fields (This);
        This.name := name;
        This.jPanel := jPanel;
        This.helpSet := helpSet;
   end Initialize;

   function Create (name : Unbounded_String; jPanel : JPanel_Access; helpSet : HelpSet_Access) return AbstractInputAutomationFactory_Access is
      This : constant AbstractInputAutomationFactory_Access := new AbstractInputAutomationFactory;
   begin
      AbstractInputAutomationFactory_Package.Initialize (This.all, name, jPanel, helpSet);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel : JPanel_Access) is
      url : URL_Access;
   begin
      InputAutomationModuleFactoryInterface_Package.Initialize (This);
      Initialize_Fields (This);
        This.name := name;
        This.jPanel := jPanel;
        url := This.all'Tag.getResource (To_Unbounded_String ("/help/Help.hs"));
        This.helpSet := JavaHelpUtil_Package.getInstance.getHelpSet (url);
   end Initialize;

   function Create (name : Unbounded_String; jPanel : JPanel_Access) return AbstractInputAutomationFactory_Access is
      This : constant AbstractInputAutomationFactory_Access := new AbstractInputAutomationFactory;
   begin
      AbstractInputAutomationFactory_Package.Initialize (This.all, name, jPanel);
      return This;
   end Create;

   function getName (This : in out AbstractInputAutomationFactory) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getConfigurationJPanel (This : in out AbstractInputAutomationFactory) return JPanel_Access is
   begin
        return This.jPanel;
   end getConfigurationJPanel;

   function getHelpSet (This : in out AbstractInputAutomationFactory) return HelpSet_Access is
   begin
        return This.helpSet;
   end getHelpSet;

end org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;


