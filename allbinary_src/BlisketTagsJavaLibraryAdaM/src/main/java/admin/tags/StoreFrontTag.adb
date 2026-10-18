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


with admin.taghelpers.StoreFrontHelperFactory_Package; use admin.taghelpers.StoreFrontHelperFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.StoreFrontTag_Package is

   package StoreFrontHelperFactory_Package renames Standard.admin.taghelpers.StoreFrontHelperFactory_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out StoreFrontTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.command := Null_Unbounded_String;
      This.storeName := Null_Unbounded_String;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontTag_Access is
      This : constant StoreFrontTag_Access := new StoreFrontTag;
   begin
      StoreFrontTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out StoreFrontTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setStoreName (This : in out StoreFrontTag; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   --  throws LicensingException
   function getCurrentLocation (This : in out StoreFrontTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := StoreFrontHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("getCurrentLocation"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getCurrentLocation;

   --  throws LicensingException
   function getCurrentHomeLocation (This : in out StoreFrontTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := StoreFrontHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("getCurrentHomeLocation"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getCurrentHomeLocation;

   --  throws JspTagException
   function doStartTag (This : in out StoreFrontTag) return Integer is
   begin
        begin
            if (This.command) /= (Null_Unbounded_String) then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                This.propertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (This.storeName));
                if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.GETCURRENTLOCATION)) = (0) then
                    This.pageContext.getOut.print (StoreFrontTag'Class (This).getCurrentLocation);
                elsif (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.GETCURRENTHOMELOCATION)) = (0) then
                    This.pageContext.getOut.print (StoreFrontTag'Class (This).getCurrentHomeLocation);
                end if;
            end if;
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.StoreFrontTag_Package;


