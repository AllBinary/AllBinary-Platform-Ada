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


package body views.admin.inventory.listings.ProductListingFactory_Package is

   procedure Initialize_Fields (This : in out ProductListingFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProductListingFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProductListingFactory_Access is
      This : constant ProductListingFactory_Access := new ProductListingFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance (searchRequest : SearchRequest_Access) return ProductListingInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return ProductListingInterface_Access (ProductListing_Package.Create (searchRequest));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("ProductListingFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
        end;
   end getInstance;

   procedure getInstance (searchRequest : SearchRequest_Access) is
      Java_Result : constant ProductListingInterface_Access := getInstance (searchRequest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end views.admin.inventory.listings.ProductListingFactory_Package;


