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


package body org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws MoneyException
   function getInstance (hashMap : HashMap_Access) return TableMappingInterface_Access is
   begin
        return TableMappingInterface_Access (Item_Package.Create (hashMap));
   end getInstance;

   --  throws Exception, MoneyException
   function getInstance (request : HttpServletRequest_Access) return TableMappingInterface_Access is
   begin
        return TableMappingInterface_Access (Item_Package.Create (RequestParams_Package.Create (request).toHashMap));
   end getInstance;

   procedure getInstance (hashMap : HashMap_Access) is
      Java_Result : constant TableMappingInterface_Access := getInstance (hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (request : HttpServletRequest_Access) is
      Java_Result : constant TableMappingInterface_Access := getInstance (request);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package;


