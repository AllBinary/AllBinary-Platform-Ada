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


with org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUser_Package; use org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUser_Package;

package body org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package is

   procedure Initialize_Fields (This : in out ViewEditorWebStoreAdminUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewEditorWebStoreAdminUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ViewEditorWebStoreAdminUserFactory_Access is
      This : constant ViewEditorWebStoreAdminUserFactory_Access := new ViewEditorWebStoreAdminUserFactory;
   begin
      ViewEditorWebStoreAdminUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ViewEditorWebStoreAdminUserFactory) return UserInterface_Access is
   begin
        return UserInterface_Access (ViewEditorWebStoreAdminUser_Package.Create);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out ViewEditorWebStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return UserInterface_Access (ViewEditorWebStoreAdminUser_Package.Create (hashMap));
   end getInstance;

   procedure getInstance (This : in out ViewEditorWebStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant UserInterface_Access := ViewEditorWebStoreAdminUserFactory'Class (This).getInstance (hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package;


