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


package body views.admin.inventory.listings.InventoryViewFactory_Package is

   procedure Initialize_Fields (This : in out InventoryViewFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryViewFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InventoryViewFactory_Access is
      This : constant InventoryViewFactory_Access := new InventoryViewFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (searchRequest : SearchRequest_Access) return InventoryViewSearchInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return InventorySearch_Package.Create (searchRequest);
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("InventoryViewFactory"), To_Unbounded_String ("getInstance(SearchRequest)"), e);
            end if;
            return null;
        end;
   end getInstance;

   procedure getInstance (searchRequest : SearchRequest_Access) is
      Java_Result : constant InventoryViewSearchInterface_Access := getInstance (searchRequest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end views.admin.inventory.listings.InventoryViewFactory_Package;


