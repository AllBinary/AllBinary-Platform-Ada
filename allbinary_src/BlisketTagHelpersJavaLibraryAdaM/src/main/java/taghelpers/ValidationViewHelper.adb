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


package body taghelpers.ValidationViewHelper_Package is

   procedure Initialize_Fields (This : in out ValidationViewHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ValidationViewHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        ViewHelper_Package.Initialize (This, hashMap, pageContext);
        Initialize_Fields (This);
        This.viewInterface := ValidationComponentInterface_Access (This.getViewObject);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return ValidationViewHelper_Access is
      This : constant ValidationViewHelper_Access := new ValidationViewHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function isValid (This : in out ValidationViewHelper) return Boolean is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Started"), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            return This.viewInterface.isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out ValidationViewHelper) return Unbounded_String is
   begin
        begin
            return This.viewInterface.validationInfo;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Unknown Validation Error");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out ValidationViewHelper) return Document_Access is
   begin
        begin
            return This.viewInterface.toValidationInfoDoc;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toValidationInfoDoc()"), e);
            end if;
            return null;
                end;
        end;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ValidationViewHelper; document : Document_Access) return Node_Access is
   begin
        begin
            return This.viewInterface.toValidationInfoNode (document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toValidationInfoNode()"), e);
            end if;
            return null;
                end;
        end;
   end toValidationInfoNode;

   procedure isValid (This : in out ValidationViewHelper) is
      Java_Result : constant Boolean := ValidationViewHelper'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out ValidationViewHelper) is
      Java_Result : constant Unbounded_String := ValidationViewHelper'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out ValidationViewHelper) is
      Java_Result : constant Document_Access := ValidationViewHelper'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out ValidationViewHelper; document : Document_Access) is
      Java_Result : constant Node_Access := ValidationViewHelper'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end taghelpers.ValidationViewHelper_Package;


