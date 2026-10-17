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


package body org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package is

   procedure Initialize_Fields (This : in out BasicWeightShippingModuleView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWeightShippingModuleView'Class) is
   begin
      BasicWeightShippingModule_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicWeightShippingModuleView_Access is
      This : constant BasicWeightShippingModuleView_Access := new BasicWeightShippingModuleView;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out BasicWeightShippingModuleView) return Boolean is
   begin
        return null;
   end isValid;

   function toValidationInfoDoc (This : in out BasicWeightShippingModuleView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out BasicWeightShippingModuleView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out BasicWeightShippingModuleView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   function toXmlNode (This : in out BasicWeightShippingModuleView; document : Document_Access) return Node_Access is
      shippingMethodNode : Node_Access;
   begin
        begin
            shippingMethodNode := document.createElement (ShippingMethodData_Package.NAME);
            shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodData_Package.NAME, This.getName));
            shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodData_Package.DESCRIPTION, This.getDescription));
            return shippingMethodNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   function toXmlDoc (This : in out BasicWeightShippingModuleView) return Document_Access is
      document : Document_Access;
   begin
        begin
            document := DomDocumentHelper_Package.create;
            return document;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toXmlDoc"), e);
            end if;
            return null;
                end;
        end;
   end toXmlDoc;

   function view (This : in out BasicWeightShippingModuleView) return Unbounded_String is
   begin
        begin
            return This.commonStrings.NOT_IMPLEMENTED;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end view;

   procedure isValid (This : in out BasicWeightShippingModuleView) is
      Java_Result : constant Boolean := BasicWeightShippingModuleView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure toValidationInfoDoc (This : in out BasicWeightShippingModuleView) is
      Java_Result : constant Document_Access := BasicWeightShippingModuleView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out BasicWeightShippingModuleView; document : Document_Access) is
      Java_Result : constant Node_Access := BasicWeightShippingModuleView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure validationInfo (This : in out BasicWeightShippingModuleView) is
      Java_Result : constant Unbounded_String := BasicWeightShippingModuleView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toXmlNode (This : in out BasicWeightShippingModuleView; document : Document_Access) is
      Java_Result : constant Node_Access := BasicWeightShippingModuleView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toXmlDoc (This : in out BasicWeightShippingModuleView) is
      Java_Result : constant Document_Access := BasicWeightShippingModuleView'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure view (This : in out BasicWeightShippingModuleView) is
      Java_Result : constant Unbounded_String := BasicWeightShippingModuleView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package;


