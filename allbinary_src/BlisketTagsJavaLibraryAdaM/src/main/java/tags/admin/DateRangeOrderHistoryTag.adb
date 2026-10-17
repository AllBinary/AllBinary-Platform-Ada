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


package body tags.admin.DateRangeOrderHistoryTag_Package is

   procedure Initialize_Fields (This : in out DateRangeOrderHistoryTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
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
                This.logUtil.putF (To_Unbounded_String ("Tag Start"), DateRangeOrderHistoryTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            This.setName (To_Unbounded_String ("Range Order History View"));
            This.setObjectFile (To_Unbounded_String ("views.admin.orderhistory.DateRangeOrderHistoryView"));
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    null;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
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


