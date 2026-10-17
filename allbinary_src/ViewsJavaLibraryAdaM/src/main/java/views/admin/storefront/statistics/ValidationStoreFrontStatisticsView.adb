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


package body views.admin.storefront.statistics.ValidationStoreFrontStatisticsView_Package is

   procedure Initialize_Fields (This : in out ValidationStoreFrontStatisticsView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.newStoreFrontInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ValidationStoreFrontStatisticsView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        StoreFrontStatisticsComponent_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return ValidationStoreFrontStatisticsView_Access is
      This : constant ValidationStoreFrontStatisticsView_Access := new ValidationStoreFrontStatisticsView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out ValidationStoreFrontStatisticsView) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            return valid;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
        end;
   end isValid;

   function validationInfo (This : in out ValidationStoreFrontStatisticsView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Never"));
            return stringBuffer.toString;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out ValidationStoreFrontStatisticsView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ValidationStoreFrontStatisticsView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out ValidationStoreFrontStatisticsView) is
      Java_Result : constant Boolean := ValidationStoreFrontStatisticsView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out ValidationStoreFrontStatisticsView) is
      Java_Result : constant Unbounded_String := ValidationStoreFrontStatisticsView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out ValidationStoreFrontStatisticsView) is
      Java_Result : constant Document_Access := ValidationStoreFrontStatisticsView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out ValidationStoreFrontStatisticsView; document : Document_Access) is
      Java_Result : constant Node_Access := ValidationStoreFrontStatisticsView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.storefront.statistics.ValidationStoreFrontStatisticsView_Package;


