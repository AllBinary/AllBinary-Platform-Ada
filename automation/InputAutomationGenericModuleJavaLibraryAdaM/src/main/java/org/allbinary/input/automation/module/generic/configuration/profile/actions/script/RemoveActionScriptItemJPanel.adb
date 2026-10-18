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


with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;

package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package is

   package GenericProfileAction_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
   procedure Initialize_Fields (This : in out RemoveActionScriptItemJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.removeJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out RemoveActionScriptItemJPanel'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; profileActionScriptConditionInterface_Param : access ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class) is
      genericProfileActionJPanel : constant GenericProfileActionJPanel_Access := GenericProfileActionJPanel_Access (genericProfileActionJPanel_Param);
      profileActionScriptConditionInterface : constant ProfileActionScriptConditionInterface_Access := ProfileActionScriptConditionInterface_Access (profileActionScriptConditionInterface_Param);
   begin
      Panel_Package.Initialize (This);
      Initialize_Fields (This);
        RemoveActionScriptItemJPanel'Class (This).initComponents;
        This.genericProfileActionJPanel := genericProfileActionJPanel;
        This.profileActionScriptConditionInterface := profileActionScriptConditionInterface;
   end Initialize;

   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; profileActionScriptConditionInterface_Param : access ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class) return RemoveActionScriptItemJPanel_Access is
      This : constant RemoveActionScriptItemJPanel_Access := new RemoveActionScriptItemJPanel;
   begin
      RemoveActionScriptItemJPanel_Package.Initialize (This.all, genericProfileActionJPanel_Param, profileActionScriptConditionInterface_Param);
      return This;
   end Create;

   procedure initComponents (This : in out RemoveActionScriptItemJPanel) is
   begin
        This.removeJButton := JButton_Package.Create;
        RemoveActionScriptItemJPanel'Class (This).setLayout (GridLayout_Package.Create);
        This.removeJButton.setText (To_Unbounded_String ("Remove"));
        This.removeJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  RemoveActionScriptItemJPanel'Class (This).removeJButtonActionPerformed (evt);
--     end actionPerformed;
);
        RemoveActionScriptItemJPanel'Class (This).add (This.removeJButton);
   end initComponents;

   procedure removeJButtonActionPerformed (This : in out RemoveActionScriptItemJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      genericProfileAction : GenericProfileAction_Access;
   begin
        genericProfileAction := This.genericProfileActionJPanel.getGenericProfileAction;
        if (genericProfileAction) = (null) then
            This.logUtil.putF (To_Unbounded_String ("GenericProfileAction was null"), RemoveActionScriptItemJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("removeJButtonActionPerformed"));
            return;
        end if;
        genericProfileAction.getGenericProfileActionScript.removeCondition (This.profileActionScriptConditionInterface);
        This.genericProfileActionJPanel.updateProfileActionUI;
   end removeJButtonActionPerformed;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package;


