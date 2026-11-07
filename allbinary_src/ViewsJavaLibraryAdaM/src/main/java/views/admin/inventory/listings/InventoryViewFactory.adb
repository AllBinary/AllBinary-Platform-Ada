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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with views.generic_Id.inventory.InventorySearch_Package; use views.generic_Id.inventory.InventorySearch_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package; use views.admin.inventory.listings.InventoryViewSearchInterface_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body views.admin.inventory.listings.InventoryViewFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package InventorySearch_Package renames Standard.views.generic_Id.inventory.InventorySearch_Package;
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   function "=" (Left, Right : SearchRequest_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   function "=" (Left, Right : SearchRequest_Access_Array) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   function "=" (Left, Right : SearchRequest_Access_Array_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   function "=" (Left, Right : SearchRequest_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SearchRequest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype InventoryViewSearchInterface_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access;
   function "=" (Left, Right : InventoryViewSearchInterface_Access) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array_Access) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array_Access_Array is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array_Access_Array) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array_Access_Array_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
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
            return InventoryViewSearchInterface_Access (InventorySearch_Package.Create (searchRequest));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("InventoryViewFactory")), To_Unbounded_String ("getInstance(SearchRequest)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      Java_Result : constant InventoryViewSearchInterface_Access := getInstance (searchRequest_Param => searchRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end views.admin.inventory.listings.InventoryViewFactory_Package;


