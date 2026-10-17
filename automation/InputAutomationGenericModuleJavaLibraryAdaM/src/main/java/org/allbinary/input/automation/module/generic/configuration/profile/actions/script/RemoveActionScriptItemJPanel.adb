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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package is

   procedure Initialize_Fields (This : in out RemoveActionScriptItemJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.removeJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out RemoveActionScriptItemJPanel'Class; genericProfileActionJPanel : GenericProfileActionJPanel_Access; profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access) is
   begin
      Panel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
        This.genericProfileActionJPanel := genericProfileActionJPanel;
        This.profileActionScriptConditionInterface := profileActionScriptConditionInterface;
   end Initialize;

   function Create (genericProfileActionJPanel : GenericProfileActionJPanel_Access; profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access) return RemoveActionScriptItemJPanel_Access is
      This : constant RemoveActionScriptItemJPanel_Access := new RemoveActionScriptItemJPanel;
   begin
      RemoveActionScriptItemJPanel_Package.Initialize (This.all, genericProfileActionJPanel, profileActionScriptConditionInterface);
      return This;
   end Create;

   procedure initComponents (This : in out RemoveActionScriptItemJPanel) is
   begin
        This.removeJButton := JButton_Package.Create;
        This.setLayout (GridLayout_Package.Create);
        This.removeJButton.setText (To_Unbounded_String ("Remove"));
        This.removeJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.removeJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.add (This.removeJButton);
   end initComponents;

   procedure removeJButtonActionPerformed (This : in out RemoveActionScriptItemJPanel; evt : ActionEvent_Access) is
      genericProfileAction : GenericProfileAction_Access;
   begin
        genericProfileAction := This.genericProfileActionJPanel.getGenericProfileAction;
        if (genericProfileAction) = (null) then
            This.logUtil.putF (To_Unbounded_String ("GenericProfileAction was null"), This'Unchecked_Access, To_Unbounded_String ("removeJButtonActionPerformed"));
            return;
        end if;
        genericProfileAction.getGenericProfileActionScript.removeCondition (This.profileActionScriptConditionInterface);
        This.genericProfileActionJPanel.updateProfileActionUI;
   end removeJButtonActionPerformed;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package;


