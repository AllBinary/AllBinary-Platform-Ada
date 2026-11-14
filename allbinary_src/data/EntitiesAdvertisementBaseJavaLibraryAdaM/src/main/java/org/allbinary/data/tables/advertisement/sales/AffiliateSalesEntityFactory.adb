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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package; use org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package; use org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype AffiliateSalesEntityInterface_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access;
   function "=" (Left, Right : AffiliateSalesEntityInterface_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References."=";
   subtype AffiliateSalesEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array;
   function "=" (Left, Right : AffiliateSalesEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References."=";
   subtype AffiliateSalesEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array_Access;
   function "=" (Left, Right : AffiliateSalesEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References."=";
   subtype AffiliateSalesEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AffiliateSalesEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References."=";
   subtype AffiliateSalesEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AffiliateSalesEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AffiliateSalesEntityFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AffiliateSalesEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AffiliateSalesEntityFactory_Access is
      This : constant AffiliateSalesEntityFactory_Access := new AffiliateSalesEntityFactory;
   begin
      AffiliateSalesEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AffiliateSalesEntityInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return AffiliateSalesEntityInterface_Access (AffiliateSalesEntity_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("AffiliateEntityFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("org.allbinary.data.tables.AffiliatesSalesEntity");

end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package;


