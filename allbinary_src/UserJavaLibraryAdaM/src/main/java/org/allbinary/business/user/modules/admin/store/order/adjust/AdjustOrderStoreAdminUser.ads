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

limited with org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package;
package org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References is
   type AdjustOrderStoreAdminUser_Access is access all org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package.AdjustOrderStoreAdminUser'Class;
   type AdjustOrderStoreAdminUser_Access_Array is array (Natural range <>) of AdjustOrderStoreAdminUser_Access;
   type AdjustOrderStoreAdminUser_Access_Array_Access is access all AdjustOrderStoreAdminUser_Access_Array;
   type AdjustOrderStoreAdminUser_Access_Array_Access_Array is array (Natural range <>) of AdjustOrderStoreAdminUser_Access_Array_Access;
   type AdjustOrderStoreAdminUser_Access_Array_Access_Array_Access is access all AdjustOrderStoreAdminUser_Access_Array_Access_Array;
end org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References;

with org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;

package org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package Reference_Types is
   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   use type WeblisketSessionInterface_Access;
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   use type WeblisketSessionInterface_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access;
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   use type WeblisketSessionInterface_Access_Array_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdjustOrderStoreAdminUser_Access is org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References.AdjustOrderStoreAdminUser_Access;
   function "=" (Left, Right : AdjustOrderStoreAdminUser_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References."=";
   subtype AdjustOrderStoreAdminUser_Access_Array is org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References.AdjustOrderStoreAdminUser_Access_Array;
   function "=" (Left, Right : AdjustOrderStoreAdminUser_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References."=";
   subtype AdjustOrderStoreAdminUser_Access_Array_Access is org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References.AdjustOrderStoreAdminUser_Access_Array_Access;
   function "=" (Left, Right : AdjustOrderStoreAdminUser_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References."=";
   subtype AdjustOrderStoreAdminUser_Access_Array_Access_Array is org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References.AdjustOrderStoreAdminUser_Access_Array_Access_Array;
   function "=" (Left, Right : AdjustOrderStoreAdminUser_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References."=";
   subtype AdjustOrderStoreAdminUser_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References.AdjustOrderStoreAdminUser_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdjustOrderStoreAdminUser_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package_References."=";

   type AdjustOrderStoreAdminUser is new User_Package.User with null record;

   procedure Initialize (This : in out AdjustOrderStoreAdminUser'Class);
   function Create return AdjustOrderStoreAdminUser_Access;
   procedure Initialize (This : in out AdjustOrderStoreAdminUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return AdjustOrderStoreAdminUser_Access;
   procedure validateSession (This : in out AdjustOrderStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);
   procedure updateSession (This : in out AdjustOrderStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);

end org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUser_Package;


