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


package body admin.taghelpers.StoreFrontsHelperFactory_Package is

   procedure Initialize_Fields (This : in out StoreFrontsHelperFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontsHelperFactory'Class) is
   begin
      TagHelperFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontsHelperFactory_Access is
      This : constant StoreFrontsHelperFactory_Access := new StoreFrontsHelperFactory;
   begin
      StoreFrontsHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out StoreFrontsHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access is
   begin
        begin
            return StoreFrontsHelper_Package.Create (hashMap, pageContext);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out StoreFrontsHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant Java_Object_Access := StoreFrontsHelperFactory'Class (This).getInstance (hashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end admin.taghelpers.StoreFrontsHelperFactory_Package;


