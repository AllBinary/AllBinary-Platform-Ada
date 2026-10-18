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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.UserFactoryInterface_Package; use org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;

package org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;

   type WorkflowEditorWebStoreAdminUserFactory is tagged;
   type WorkflowEditorWebStoreAdminUserFactory_Access is access all WorkflowEditorWebStoreAdminUserFactory'Class;
   type WorkflowEditorWebStoreAdminUserFactory_Access_Array is array (Natural range <>) of WorkflowEditorWebStoreAdminUserFactory_Access;
   type WorkflowEditorWebStoreAdminUserFactory_Access_Array_Access is access all WorkflowEditorWebStoreAdminUserFactory_Access_Array;
   type WorkflowEditorWebStoreAdminUserFactory_Access_Array_Access_Array is array (Natural range <>) of WorkflowEditorWebStoreAdminUserFactory_Access_Array_Access;
   type WorkflowEditorWebStoreAdminUserFactory_Access_Array_Access_Array_Access is access all WorkflowEditorWebStoreAdminUserFactory_Access_Array_Access_Array;

   type WorkflowEditorWebStoreAdminUserFactory is new Java_Object and UserFactoryInterface with null record;

   procedure Initialize (This : in out WorkflowEditorWebStoreAdminUserFactory'Class);
   function Create return WorkflowEditorWebStoreAdminUserFactory_Access;
   function getInstance (This : in out WorkflowEditorWebStoreAdminUserFactory) return UserInterface_Access;
   function getInstance (This : in out WorkflowEditorWebStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access;
   procedure getInstance (This : in out WorkflowEditorWebStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package;


