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
with org.allbinary.globals.UrlGlobalsView_Package; use org.allbinary.globals.UrlGlobalsView_Package;

package body org.allbinary.globals.UrlGlobalsViewFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out UrlGlobalsViewFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UrlGlobalsViewFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UrlGlobalsViewFactory_Access is
      This : constant UrlGlobalsViewFactory_Access := new UrlGlobalsViewFactory;
   begin
      UrlGlobalsViewFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return DomNodeInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return DomNodeInterface_Access (UrlGlobalsView_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("GlobalsViewFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

end org.allbinary.globals.UrlGlobalsViewFactory_Package;


