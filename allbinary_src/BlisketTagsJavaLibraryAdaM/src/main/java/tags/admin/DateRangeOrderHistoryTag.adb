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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;
with tags.ModifyTag_Package;
with tags.transform.info.TransformInfoTag_Package;
with tags.TransformTag_Package;
with tags.ValidationTransformTag_Package;

package body tags.admin.DateRangeOrderHistoryTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out DateRangeOrderHistoryTag'Class) is
   begin
      null;
      This.DateRangeOrderHistoryTag_Field_logUtil := LogUtil_Package.getInstance;
      This.status := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out DateRangeOrderHistoryTag'Class) is
   begin
        StoreValidationTransformTag_Package.Initialize (This);
        Initialize_Fields (This);
   end Initialize;

   function Create return DateRangeOrderHistoryTag_Access is
      This : constant DateRangeOrderHistoryTag_Access := new DateRangeOrderHistoryTag;
   begin
      DateRangeOrderHistoryTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setStatus (This : in out DateRangeOrderHistoryTag; value : Unbounded_String) is
   begin
        This.status := value;
   end setStatus;

   --  throws JspTagException
   function doStartTag (This : in out DateRangeOrderHistoryTag) return Integer is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.DateRangeOrderHistoryTag_Field_logUtil.putF (To_Unbounded_String ("Tag Start"), DateRangeOrderHistoryTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            DateRangeOrderHistoryTag'Class (This).setName (To_Unbounded_String ("Range Order History View"));
            DateRangeOrderHistoryTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.orderhistory.DateRangeOrderHistoryView"));
            if (DateRangeOrderHistoryTag'Class (This).getCommand) /= (null) then
                if (DateRangeOrderHistoryTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    null;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (DateRangeOrderHistoryTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag_Package.StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.admin.DateRangeOrderHistoryTag_Package;


