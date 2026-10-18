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


package body org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package is

   procedure Initialize_Fields (This : in out AdjustOrderStoreAdminUser'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustOrderStoreAdminUser'Class) is
   begin
        User_Package.Initialize (This);
   end Initialize;

   function Create return AdjustOrderStoreAdminUser_Access is
      This : constant AdjustOrderStoreAdminUser_Access := new AdjustOrderStoreAdminUser;
   begin
      AdjustOrderStoreAdminUser_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out AdjustOrderStoreAdminUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class) is
      userHashMap : constant HashMap_Access := HashMap_Access (userHashMap_Param);
   begin
        User_Package.Initialize (This, userHashMap);
   end Initialize;

   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return AdjustOrderStoreAdminUser_Access is
      This : constant AdjustOrderStoreAdminUser_Access := new AdjustOrderStoreAdminUser;
   begin
      AdjustOrderStoreAdminUser_Package.Initialize (This.all, userHashMap_Param);
      return This;
   end Create;

   procedure validateSession (This : in out AdjustOrderStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        User (This).validateSession (weblisketSession);
        AdjustOrderStoreAdminUser'Class (This).updateSession (weblisketSession);
   end validateSession;

   procedure updateSession (This : in out AdjustOrderStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        weblisketSession.setStoreName (AdjustOrderStoreAdminUser'Class (This).getPermissions);
   end updateSession;

end org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package;


