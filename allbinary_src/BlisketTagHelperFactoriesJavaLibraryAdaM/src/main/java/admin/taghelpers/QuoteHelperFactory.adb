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


with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.taghelpers.QuoteHelper_Package; use admin.taghelpers.QuoteHelper_Package;

package body admin.taghelpers.QuoteHelperFactory_Package is

   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out QuoteHelperFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteHelperFactory'Class) is
   begin
      TagHelperFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return QuoteHelperFactory_Access is
      This : constant QuoteHelperFactory_Access := new QuoteHelperFactory;
   begin
      QuoteHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out QuoteHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        begin
            return Java_Object_Access (QuoteHelper_Package.Create (hashMap, pageContext));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, QuoteHelperFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out QuoteHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := QuoteHelperFactory'Class (This).getInstance (hashMap_Param => hashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end admin.taghelpers.QuoteHelperFactory_Package;


