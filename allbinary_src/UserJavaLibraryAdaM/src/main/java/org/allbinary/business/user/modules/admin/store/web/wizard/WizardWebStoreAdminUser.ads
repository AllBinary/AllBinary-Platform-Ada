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

package org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUser_Package is

   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type WizardWebStoreAdminUser is tagged;
   type WizardWebStoreAdminUser_Access is access all WizardWebStoreAdminUser'Class;
   type WizardWebStoreAdminUser_Access_Array is array (Natural range <>) of WizardWebStoreAdminUser_Access;
   type WizardWebStoreAdminUser_Access_Array_Access is access all WizardWebStoreAdminUser_Access_Array;

   type WizardWebStoreAdminUser is new User with null record;

   procedure Initialize (This : in out WizardWebStoreAdminUser'Class);
   function Create return WizardWebStoreAdminUser_Access;
   procedure Initialize (This : in out WizardWebStoreAdminUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return WizardWebStoreAdminUser_Access;
   procedure validateSession (This : in out WizardWebStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);
   procedure updateSession (This : in out WizardWebStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);

end org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUser_Package;


