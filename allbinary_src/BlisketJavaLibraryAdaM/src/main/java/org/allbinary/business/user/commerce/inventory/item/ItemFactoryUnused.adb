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


with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.business.user.commerce.inventory.item.Item_Package; use org.allbinary.business.user.commerce.inventory.item.Item_Package;

package body org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package is

   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   procedure Initialize_Fields (This : in out ItemFactoryUnused'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ItemFactoryUnused'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ItemFactoryUnused_Access is
      This : constant ItemFactoryUnused_Access := new ItemFactoryUnused;
   begin
      ItemFactoryUnused_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws MoneyException
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return TableMappingInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return TableMappingInterface_Access (Item_Package.Create (hashMap));
   end getInstance;

   --  throws Exception, MoneyException
   function getInstance (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return TableMappingInterface_Access is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
        return TableMappingInterface_Access (Item_Package.Create (RequestParams_Package.Create (request).toHashMap));
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant TableMappingInterface_Access := getInstance (hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      Java_Result : constant TableMappingInterface_Access := getInstance (request_Param => request_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package;


