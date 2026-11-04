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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;

package body org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUser_Package is

   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   procedure Initialize_Fields (This : in out WizardWebStoreAdminUser'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WizardWebStoreAdminUser'Class) is
   begin
        User_Package.Initialize (This);
   end Initialize;

   function Create return WizardWebStoreAdminUser_Access is
      This : constant WizardWebStoreAdminUser_Access := new WizardWebStoreAdminUser;
   begin
      WizardWebStoreAdminUser_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out WizardWebStoreAdminUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class) is
      userHashMap : constant HashMap_Access := HashMap_Access (userHashMap_Param);
   begin
        User_Package.Initialize (This, userHashMap);
   end Initialize;

   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return WizardWebStoreAdminUser_Access is
      This : constant WizardWebStoreAdminUser_Access := new WizardWebStoreAdminUser;
   begin
      WizardWebStoreAdminUser_Package.Initialize (This.all, userHashMap_Param);
      return This;
   end Create;

   procedure validateSession (This : in out WizardWebStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        User_Package.User (This).validateSession (weblisketSession);
        WizardWebStoreAdminUser'Class (This).updateSession (weblisketSession);
   end validateSession;

   procedure updateSession (This : in out WizardWebStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        weblisketSession.setStoreName (WizardWebStoreAdminUser'Class (This).getPermissions);
   end updateSession;

end org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUser_Package;


