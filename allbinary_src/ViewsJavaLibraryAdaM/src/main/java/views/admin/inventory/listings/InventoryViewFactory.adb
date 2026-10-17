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
      InventoryViewFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return InventoryViewSearchInterface_Access is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return InventorySearch_Package.Create (searchRequest);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("InventoryViewFactory"), To_Unbounded_String ("getInstance(SearchRequest)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      Java_Result : constant InventoryViewSearchInterface_Access := getInstance (searchRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end views.admin.inventory.listings.InventoryViewFactory_Package;


