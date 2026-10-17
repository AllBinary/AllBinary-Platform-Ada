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
with org.allbinary.business.user.UserFactoryInterface_Package; use org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUser_Package; use org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUser_Package;

package org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package is

   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;

   type ViewEditorWebStoreAdminUserFactory is tagged;
   type ViewEditorWebStoreAdminUserFactory_Access is access all ViewEditorWebStoreAdminUserFactory'Class;
   type ViewEditorWebStoreAdminUserFactory_Access_Array is array (Natural range <>) of ViewEditorWebStoreAdminUserFactory_Access;
   type ViewEditorWebStoreAdminUserFactory_Access_Array_Access is access all ViewEditorWebStoreAdminUserFactory_Access_Array;

   type ViewEditorWebStoreAdminUserFactory is new UserFactoryInterface with null record;

   procedure Initialize (This : in out ViewEditorWebStoreAdminUserFactory'Class);
   function Create return ViewEditorWebStoreAdminUserFactory_Access;
   function getInstance (This : in out ViewEditorWebStoreAdminUserFactory) return UserInterface_Access;
   function getInstance (This : in out ViewEditorWebStoreAdminUserFactory; hashMap : HashMap_Access) return UserInterface_Access;
   procedure getInstance (This : in out ViewEditorWebStoreAdminUserFactory; hashMap : HashMap_Access);

end org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package;


