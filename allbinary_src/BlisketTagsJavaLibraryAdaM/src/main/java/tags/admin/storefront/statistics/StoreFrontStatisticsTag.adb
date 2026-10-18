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


with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body tags.admin.storefront.statistics.StoreFrontStatisticsTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out StoreFrontStatisticsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontStatisticsTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontStatisticsTag_Access is
      This : constant StoreFrontStatisticsTag_Access := new StoreFrontStatisticsTag;
   begin
      StoreFrontStatisticsTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out StoreFrontStatisticsTag) return Integer is
   begin
        begin
            if (StoreFrontStatisticsTag'Class (This).getCommand) /= (null) then
                if (StoreFrontStatisticsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    StoreFrontStatisticsTag'Class (This).setName (To_Unbounded_String ("Validation StoreFrontStatistics View"));
                    StoreFrontStatisticsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.storefront.statistics.ValidationStoreFrontStatisticsView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (StoreFrontStatisticsTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
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

end tags.admin.storefront.statistics.StoreFrontStatisticsTag_Package;


