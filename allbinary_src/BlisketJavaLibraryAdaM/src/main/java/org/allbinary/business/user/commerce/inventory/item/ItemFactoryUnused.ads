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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.business.user.commerce.inventory.item.Item_Package; use org.allbinary.business.user.commerce.inventory.item.Item_Package;

package org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package is

   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;

   type ItemFactoryUnused is tagged;
   type ItemFactoryUnused_Access is access all ItemFactoryUnused'Class;
   type ItemFactoryUnused_Access_Array is array (Natural range <>) of ItemFactoryUnused_Access;
   type ItemFactoryUnused_Access_Array_Access is access all ItemFactoryUnused_Access_Array;

   type ItemFactoryUnused is new Java_Object with null record;

   procedure Initialize (This : in out ItemFactoryUnused'Class);
   function Create return ItemFactoryUnused_Access;
   function getInstance (hashMap : HashMap_Access) return TableMappingInterface_Access;
   procedure getInstance (hashMap : HashMap_Access);
   function getInstance (request : HttpServletRequest_Access) return TableMappingInterface_Access;
   procedure getInstance (request : HttpServletRequest_Access);

end org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package;


