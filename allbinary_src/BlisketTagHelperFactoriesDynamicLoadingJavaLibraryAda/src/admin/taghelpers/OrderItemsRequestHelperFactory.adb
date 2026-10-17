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


package body admin.taghelpers.OrderItemsRequestHelperFactory_Package is

   procedure Initialize_Fields (This : in out OrderItemsRequestHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderItemsRequestHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OrderItemsRequestHelperFactory_Access is
      This : constant OrderItemsRequestHelperFactory_Access := new OrderItemsRequestHelperFactory;
   begin
      OrderItemsRequestHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out OrderItemsRequestHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access is
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, hashMap, pageContext);
   end getInstance;

   procedure getInstance (This : in out OrderItemsRequestHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant Java_Object_Access := OrderItemsRequestHelperFactory'Class (This).getInstance (hashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("admin.taghelpers.OrderItemsRequestHelper");
   FACTORYNAME := To_Unbounded_String ("OrderItemsRequestHelperFactory");

end admin.taghelpers.OrderItemsRequestHelperFactory_Package;


