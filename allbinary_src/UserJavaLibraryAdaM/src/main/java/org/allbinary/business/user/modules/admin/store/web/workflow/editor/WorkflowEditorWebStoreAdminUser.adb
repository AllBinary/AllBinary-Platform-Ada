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


package body org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUser_Package is

   procedure Initialize_Fields (This : in out WorkflowEditorWebStoreAdminUser'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkflowEditorWebStoreAdminUser'Class) is
   begin
        User_Package.Initialize (This);
   end Initialize;

   function Create return WorkflowEditorWebStoreAdminUser_Access is
      This : constant WorkflowEditorWebStoreAdminUser_Access := new WorkflowEditorWebStoreAdminUser;
   begin
      WorkflowEditorWebStoreAdminUser_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out WorkflowEditorWebStoreAdminUser'Class; userHashMap_Param : access HashMap'Class) is
      userHashMap : HashMap_Access := HashMap_Access (userHashMap_Param);
   begin
        User_Package.Initialize (This, userHashMap);
   end Initialize;

   function Create (userHashMap_Param : access HashMap'Class) return WorkflowEditorWebStoreAdminUser_Access is
      This : constant WorkflowEditorWebStoreAdminUser_Access := new WorkflowEditorWebStoreAdminUser;
   begin
      WorkflowEditorWebStoreAdminUser_Package.Initialize (This.all, userHashMap_Param);
      return This;
   end Create;

   procedure validateSession (This : in out WorkflowEditorWebStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface'Class) is
      weblisketSession : WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        User (This).validateSession (weblisketSession);
        This.updateSession (weblisketSession);
   end validateSession;

   procedure updateSession (This : in out WorkflowEditorWebStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface'Class) is
      weblisketSession : WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        weblisketSession.setStoreName (This.getPermissions);
   end updateSession;

end org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUser_Package;


