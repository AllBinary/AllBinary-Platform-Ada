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


package body tags.StoreValidationTransformTag_Package is

   procedure Initialize_Fields (This : in out StoreValidationTransformTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.storeName := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreValidationTransformTag'Class) is
   begin
        ValidationTransformTag_Package.Initialize (This);
        Initialize_Fields (This);
   end Initialize;

   function Create return StoreValidationTransformTag_Access is
      This : constant StoreValidationTransformTag_Access := new StoreValidationTransformTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setStoreName (This : in out StoreValidationTransformTag; value : Unbounded_String) is
   begin
        This.storeName := value;
        This.getPropertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
   end setStoreName;

   --  throws JspTagException
   function doStartTag (This : in out StoreValidationTransformTag) return Integer is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("Tag Start"), This'Unchecked_Access, This.tagStrings.DO_START_TAG);
            end if;
            return ValidationTransformTag (This).doStartTag;
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

   procedure doStartTag (This : in out StoreValidationTransformTag) is
      Java_Result : constant Integer := StoreValidationTransformTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.StoreValidationTransformTag_Package;


