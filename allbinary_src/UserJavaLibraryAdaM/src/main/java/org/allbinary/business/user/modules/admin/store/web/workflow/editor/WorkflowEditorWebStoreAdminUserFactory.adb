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


package body org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package is

   procedure Initialize_Fields (This : in out WorkflowEditorWebStoreAdminUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkflowEditorWebStoreAdminUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WorkflowEditorWebStoreAdminUserFactory_Access is
      This : constant WorkflowEditorWebStoreAdminUserFactory_Access := new WorkflowEditorWebStoreAdminUserFactory;
   begin
      WorkflowEditorWebStoreAdminUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out WorkflowEditorWebStoreAdminUserFactory) return UserInterface_Access is
   begin
        return WorkflowEditorWebStoreAdminUser_Package.Create;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out WorkflowEditorWebStoreAdminUserFactory; hashMap_Param : access HashMap'Class) return UserInterface_Access is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return WorkflowEditorWebStoreAdminUser_Package.Create (hashMap);
   end getInstance;

   procedure getInstance (This : in out WorkflowEditorWebStoreAdminUserFactory; hashMap_Param : access HashMap'Class) is
      Java_Result : constant UserInterface_Access := WorkflowEditorWebStoreAdminUserFactory'Class (This).getInstance (hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package;


