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

limited with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
package org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References is
   type WeblisketSessionInterface_Access is access all org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package.WeblisketSessionInterface'Class;
   type WeblisketSessionInterface_Access_Array is array (Natural range <>) of WeblisketSessionInterface_Access;
   type WeblisketSessionInterface_Access_Array_Access is access all WeblisketSessionInterface_Access_Array;
   type WeblisketSessionInterface_Access_Array_Access_Array is array (Natural range <>) of WeblisketSessionInterface_Access_Array_Access;
   type WeblisketSessionInterface_Access_Array_Access_Array_Access is access all WeblisketSessionInterface_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;

with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;

package org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package is

   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package Reference_Types is
   subtype OrderInterface_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access;
   use type OrderInterface_Access;
   subtype OrderInterface_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array;
   use type OrderInterface_Access_Array;
   subtype OrderInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access;
   use type OrderInterface_Access_Array_Access;
   subtype OrderInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array;
   use type OrderInterface_Access_Array_Access_Array;
   subtype OrderInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array_Access;
   use type OrderInterface_Access_Array_Access_Array_Access;
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   use type UserRole_Access;
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   use type UserRole_Access_Array;
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   use type UserRole_Access_Array_Access;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   use type UserRole_Access_Array_Access_Array;
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   use type UserRole_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type WeblisketSessionInterface is interface;
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
   function Java_Object_Access_From_WeblisketSessionInterface (Value : WeblisketSessionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure clear (This : in out WeblisketSessionInterface) is abstract;
   function getAttempts (This : in out WeblisketSessionInterface) return Integer is abstract;
   function getAuthentication (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getCreationTime (This : in out WeblisketSessionInterface) return Long_Long_Integer is abstract;
   function getId (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getLastAccessedTime (This : in out WeblisketSessionInterface) return Long_Long_Integer is abstract;
   function getOrder (This : in out WeblisketSessionInterface) return OrderInterface_Access is abstract;
   function getPassword (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getPaymentMethod (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getRole (This : in out WeblisketSessionInterface) return UserRole_Access is abstract;
   function getStoreName (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getTimeout (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getUserName (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   function getWebAppPath (This : in out WeblisketSessionInterface) return Unbounded_String is abstract;
   procedure removeBasket (This : in out WeblisketSessionInterface) is abstract;
   procedure setAttempts (This : in out WeblisketSessionInterface; value : Integer) is abstract;
   procedure setAuthenticated (This : in out WeblisketSessionInterface) is abstract;
   procedure setAuthenticated (This : in out WeblisketSessionInterface; value : Boolean) is abstract;
   procedure setPassword (This : in out WeblisketSessionInterface; password : Unbounded_String) is abstract;
   procedure setPaymentMethod (This : in out WeblisketSessionInterface; value : Unbounded_String) is abstract;
   procedure setRole (This : in out WeblisketSessionInterface; aRole_Param : access UserRole_Package.UserRole'Class) is abstract;
   procedure setStoreName (This : in out WeblisketSessionInterface; value : Unbounded_String) is abstract;
   procedure setTimeout (This : in out WeblisketSessionInterface; value : Unbounded_String) is abstract;
   procedure setUserName (This : in out WeblisketSessionInterface; userName : Unbounded_String) is abstract;

end org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;


