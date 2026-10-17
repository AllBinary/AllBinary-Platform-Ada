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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUser_Package is

   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type WorkflowEditorWebStoreAdminUser is tagged;
   type WorkflowEditorWebStoreAdminUser_Access is access all WorkflowEditorWebStoreAdminUser'Class;
   type WorkflowEditorWebStoreAdminUser_Access_Array is array (Natural range <>) of WorkflowEditorWebStoreAdminUser_Access;
   type WorkflowEditorWebStoreAdminUser_Access_Array_Access is access all WorkflowEditorWebStoreAdminUser_Access_Array;

   type WorkflowEditorWebStoreAdminUser is new User with null record;

   procedure Initialize (This : in out WorkflowEditorWebStoreAdminUser'Class);
   function Create return WorkflowEditorWebStoreAdminUser_Access;
   procedure validateSession (This : in out WorkflowEditorWebStoreAdminUser; weblisketSession : WeblisketSessionInterface_Access);
   procedure updateSession (This : in out WorkflowEditorWebStoreAdminUser; weblisketSession : WeblisketSessionInterface_Access);

end org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUser_Package;


